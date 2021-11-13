class Window {
  final int id;
  final String name;
  final String channel;
  final String status;

  Window(this.id, this.name, this.channel, this.status);

  @override
  String toString() {
    return 'Window{name: $name, channel: $channel,status: $status }';
  }
}
