<?php

namespace App\Events;

use App\Http\Resources\Comment\CommentResource;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use League\Event\Event;

class NewCommentEvent extends Event implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $message;
    private $channel;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(CommentResource $commentResource, $idChannel)
    {
        $this->message = $commentResource;
        $this->channel = $idChannel;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return ['user'];
    }

    public function broadcastAs()
    {
        return $this->channel;
    }
}
