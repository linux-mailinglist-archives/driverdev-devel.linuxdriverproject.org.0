Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4381FB75C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 17:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EEE387909;
	Tue, 16 Jun 2020 15:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id smIlhvOPFecu; Tue, 16 Jun 2020 15:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDAF6878CD;
	Tue, 16 Jun 2020 15:47:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF5DD1BF3C9
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 15:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BAFB2875F0
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 15:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySX1gZkNAFa2 for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 15:47:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5901086D91
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 15:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592322421;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=djkgmBs6vxKrnF2svfHTCwO6iJZv0MD8YpKSjFl2MGs=;
 b=PjBRzObHu8stvCqnnHYTe9M/bfHJZ1hH9XTfLJdUqmENdWgY+FULsv91prKOV06Z2J8w4K
 YlH/eJ6+kaRWuVx8o6OThrPsA0eb0Ts6zniSGhwur2fv+/itQ9Bameco5WHmPhr2t33AqU
 FZIqS1UkYtLpPkFfxoMsPT/kuuf1SlU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-nWeeH7oNN9eY6skcHYs3nQ-1; Tue, 16 Jun 2020 11:46:56 -0400
X-MC-Unique: nWeeH7oNN9eY6skcHYs3nQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B3678DEEE2;
 Tue, 16 Jun 2020 15:46:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-114-66.rdu2.redhat.com
 [10.10.114.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3EC3B60C05;
 Tue, 16 Jun 2020 15:46:41 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <56c2304c-73cc-8f48-d8d0-5dd6c39f33f3@redhat.com>
References: <56c2304c-73cc-8f48-d8d0-5dd6c39f33f3@redhat.com>
 <20200616015718.7812-1-longman@redhat.com>
 <20200616015718.7812-2-longman@redhat.com>
 <20200616033035.GB902@sol.localdomain>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 1/3] mm/slab: Use memzero_explicit() in kzfree()
MIME-Version: 1.0
Content-ID: <879078.1592322400.1@warthog.procyon.org.uk>
Date: Tue, 16 Jun 2020 16:46:40 +0100
Message-ID: <879079.1592322400@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, Michal Hocko <mhocko@suse.com>,
 linux-btrfs@vger.kernel.org, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 David Sterba <dsterba@suse.cz>, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-stm32@st-md-mailman.stormreply.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-scsi@vger.kernel.org, James Morris <jmorris@namei.org>,
 Matthew Wilcox <willy@infradead.org>, ebiggers@kernel.org,
 linux-wpan@vger.kernel.org, David Rientjes <rientjes@google.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-pm@vger.kernel.org,
 ecryptfs@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-integrity@vger.kernel.org,
 linux-nfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, netdev@vger.kernel.org,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Waiman Long <longman@redhat.com> wrote:

> The kzfree() function is normally used to clear some sensitive
> information, like encryption keys, in the buffer before freeing it back
> to the pool. Memset()

"memset()" is all lowercase.

> is currently used for buffer clearing. However unlikely, there is still a
> non-zero probability

I'd say "a possibility".

> that

and I'd move "in [the] future" here.

> the compiler may choose to optimize away the
> memory clearing especially if LTO is being used in the future. To make sure
> that this optimization will never happen

"in these cases"

> , memzero_explicit(), which is introduced in v3.18, is now used in

"instead of"?

> kzfree() to future-proof it.

Davod

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
