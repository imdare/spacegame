
if(other.id == creator) exit;

instance_destroy();

with(other.id) event_perform(ev_other, ev_user1);