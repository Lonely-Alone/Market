package app.action;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpServerCodec;
import io.netty.handler.stream.ChunkedWriteHandler;

public class WebSocketServer {

	public void run(int port) throws Exception {
		EventLoopGroup bossGroup = new NioEventLoopGroup();
		EventLoopGroup workerGroup = new NioEventLoopGroup();
		try {
			ServerBootstrap b = new ServerBootstrap();
			// server端采用简洁的连写方式，client端才用分段普通写法。
			b.group(bossGroup, workerGroup)
					.channel(NioServerSocketChannel.class)
					.childHandler(new ChannelInitializer<SocketChannel>() {
						@Override
						public void initChannel(SocketChannel ch)
								throws Exception {
							ChannelPipeline pipeline = ch.pipeline();
							pipeline.addLast("http-codec",
									new HttpServerCodec());
							pipeline.addLast("aggregator",
									new HttpObjectAggregator(65536));
							ch.pipeline().addLast("http-chunked",
									new ChunkedWriteHandler());
							pipeline.addLast("handler",
									new WebSocketServerHandler());
						}
					});
			Channel ch = b.bind(port).channel();
			System.out.println("web socket server started at port " + port
					+ ".");
			System.out
					.println("Open your brower and navigate to http://lochost:"
							+ port + "/");
			ch.closeFuture().sync();
		} catch (Exception e) {
		} finally {
			workerGroup.shutdownGracefully();
			bossGroup.shutdownGracefully();
		}
	}

	public static void main(String[] args) throws Exception {
		int port = 8080;
		if (args.length > 0) {
			try {
				port = Integer.parseInt(args[0]);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		new WebSocketServer().run(port);
	}

}
