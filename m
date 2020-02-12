Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6BE15B3EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 23:37:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D56CA85ECB;
	Wed, 12 Feb 2020 22:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LaStRHG76eNk; Wed, 12 Feb 2020 22:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10AF785A46;
	Wed, 12 Feb 2020 22:37:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 770DB1BF421
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 22:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 734D12047A
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 22:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7zIjvHkslvs for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 22:37:00 +0000 (UTC)
X-Greylist: delayed 02:50:53 by SQLgrey-1.7.6
Received: from mail-vs1-f73.google.com (mail-vs1-f73.google.com
 [209.85.217.73])
 by silver.osuosl.org (Postfix) with ESMTPS id B174C2045C
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 22:37:00 +0000 (UTC)
Received: by mail-vs1-f73.google.com with SMTP id n14so273746vsa.8
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 14:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=JVgBXiy5lEZpXJ3FQwlh3hjFj/B6MhF9Hdt9S92pl8k=;
 b=AceqmgzNM2Fc6AWH5hWhy/HhZrwTFRyU7IMErUN5vEhRfV03I+g3URuzV7cOubTCoL
 pAy1bw3YyPC8AvVSBXywtxnWFJSXel/xolv8l/AffLpWTug7wHN9ps5NXgNON8oEEh+V
 swuEGtP9B8bJ41TO8VwQIHblwXWdeFAnRdVFRwK+BMUXa8tWZLB53SCfassxVeJH7vvm
 +LBsfZ/Ar66l8YzHcc+xTu2uRejwLewcve1F1/zl24D7CVH6ZmrzMlwzlstQ4T4zjNOZ
 eTPJ/KsyvYdJBhzmch9pUpJKrXcoFhIZqvF60XiKH4PHyNYaLdl8c4P5MbAw7tumQAgj
 Z8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=JVgBXiy5lEZpXJ3FQwlh3hjFj/B6MhF9Hdt9S92pl8k=;
 b=b8nTlPcKRXBB6QvuqWwBfLi5FCl4P0GF1Rj0MT50asUWy5ArDjWTj4dILRaWlz8SSP
 pfRv/0l2lR2JmIzxsycZ6PgmR38W6491QybIeoRjHWfSoski40PQ0rQ3jVmtQVpynbn3
 nFBSIyum/tzuDrrgH+BYKTYRkTY6ATYWXBTgZ6/eAn5R9FTsnoWGcRrZ1lIZkUe1CxfN
 XnGXzVLtJ0q3zV1lPxL5vlaVLl7EC98QmbykP0Zqb02fCmZ8XsnQVKY24zozgpSYKQHA
 RatPUmouKDYvk0lbu3uBativrQxRVnuCU4VkQHKbKbZwuwJGTClaQ4OvYWJfYbnpXs+E
 SXvA==
X-Gm-Message-State: APjAAAWpqM5epbJ0RvOEaKRFuQrtttDaGVxqsH6ZeQMaPhtmhi5cwlfg
 m3pIonvEqqS3CoN9ttyDtBb4LIQ0Xc9vfcyQTjE=
X-Google-Smtp-Source: APXvYqy3rFjAkYyNbNVI5/T4FZbfpQ/+4psD5kakBZk3n+KWReRyc5YVhYcmkzphG/BbZeTmgn65UcxbXDJQjS6l3JA=
X-Received: by 2002:a0c:e8c7:: with SMTP id m7mr20946591qvo.128.1581533013816; 
 Wed, 12 Feb 2020 10:43:33 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:28 -0500
Message-Id: <cover.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 0/5] Fix a possible race condition when dereferencing services
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When a service is removed from the state->services array in
unlock_service(), its spot in the array is set to NULL, and then it is
freed. And there is code in many places that does something like:

struct vchiq_service *service = state->services[i];
if (service && service->someting && service->something_else)
   ...

But the problem is that this could race with unlock_serivce(), where
we read a non-null value right before it gets set to NULL and
freed. This would be ok if the code above had an active ref_count on
the service, but that's often not the case. So this patch is a
proposal to reimplement the reference counting to use a struct kref,
and to use kfree_rcu() instead of kfree() when freeing the services,
so that the code above will not be buggy under rcu_read_lock(). It
seemed like the right choice because there are lots of places where
the above pattern exists and the caller doesn't have a reference, and
doesn't need to keep one. And in several places this is done in a loop
over all services.

I tested this with the vchiq_test program and also with a program that
spins creating/deleting services, but more help/advice is appreciated.

I think there's still a related race condition where a struct
vchiq_instance is dereferenced without a guarantee that it won't go
away. In vchiq_dump_platform_instances(), for example,
service->instance is dereferenced a bunch, but someone else could
close it in the middle. Also in vchiq_blocking_bulk_transfer() it
seems possible that someone else closes it after reading
service->instance? I might be missing something but after looking
around for a bit I couldn't see any reason the instance would wait for
this function to complete before being kfree'd.

Marcelo Diop-Gonzalez (5):
  staging: vc04_services: remove unused function
  staging: vc04_services: remove unneeded parentheses
  staging: vc04_services: fix indentation alignment in a few places
  staging: vc04_services: use kref + RCU to reference count services
  staging: vc04_services: don't increment service refcount when it's not
    needed

 .../interface/vchiq_arm/vchiq_arm.c           |  41 ++-
 .../interface/vchiq_arm/vchiq_core.c          | 286 +++++++++---------
 .../interface/vchiq_arm/vchiq_core.h          |  20 +-
 .../interface/vchiq_arm/vchiq_if.h            |   2 -
 4 files changed, 190 insertions(+), 159 deletions(-)

-- 
2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
