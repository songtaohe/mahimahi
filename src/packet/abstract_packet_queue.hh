/* -*-mode:c++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */

#ifndef ABSTRACT_PACKET_QUEUE
#define ABSTRACT_PACKET_QUEUE

#include <string>

#include "queued_packet.hh"

class AbstractPacketQueue
{
public:
    virtual void enqueue( QueuedPacket && p ) = 0;

    virtual QueuedPacket dequeue( void ) = 0;

    virtual bool empty( void ) const = 0;

    virtual ~AbstractPacketQueue() = default;

    virtual std::string to_string( void ) const = 0;

	std::vector<uint64_t> * schedule = NULL;
	unsigned int link_ptr = 0;
	uint64_t basetime = 0;

};

#endif /* ABSTRACT_PACKET_QUEUE */ 
