Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FC21FB190
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 15:05:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B565A89465;
	Tue, 16 Jun 2020 13:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PUKT+VD6wnJB; Tue, 16 Jun 2020 13:05:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9D1188904;
	Tue, 16 Jun 2020 13:05:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7620D1BF317
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 13:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7220687394
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 13:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ct8FLTQ5An0O for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 13:05:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A13687390
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 13:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592312717;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7nZX/JZoMn+I5qsocsgLqRgQUtpNpbf+EHIybmwJtOc=;
 b=Kb1ntucIH/6101JMcJj/Quohma8qEmcmMwFqnZXJaANFqcO993o0plTYecMTky9PEKK8E+
 FdsLdLUt8n/cP0JxjVNUiJKLD+G9+oc4hb+mic1vrT33io221HtRHjVQJVHfTNTWgh1fQf
 +D0yScY7r1lA5CagffHtuiymwFSRh80=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-9xOyBG-QPzmPq6osX1JXvA-1; Tue, 16 Jun 2020 09:05:14 -0400
X-MC-Unique: 9xOyBG-QPzmPq6osX1JXvA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 108C8107B7CB;
 Tue, 16 Jun 2020 13:05:07 +0000 (UTC)
Received: from llong.remote.csb (ovpn-114-156.rdu2.redhat.com [10.10.114.156])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3337D5D9E4;
 Tue, 16 Jun 2020 13:05:01 +0000 (UTC)
Subject: Re: [PATCH v4 1/3] mm/slab: Use memzero_explicit() in kzfree()
To: Eric Biggers <ebiggers@kernel.org>
References: <20200616015718.7812-1-longman@redhat.com>
 <20200616015718.7812-2-longman@redhat.com>
 <20200616033035.GB902@sol.localdomain>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <56c2304c-73cc-8f48-d8d0-5dd6c39f33f3@redhat.com>
Date: Tue, 16 Jun 2020 09:05:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200616033035.GB902@sol.localdomain>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
 Matthew Wilcox <willy@infradead.org>, linux-wpan@vger.kernel.org,
 David Rientjes <rientjes@google.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 linux-integrity@vger.kernel.org, linux-nfs@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, netdev@vger.kernel.org,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/15/20 11:30 PM, Eric Biggers wrote:
> On Mon, Jun 15, 2020 at 09:57:16PM -0400, Waiman Long wrote:
>> The kzfree() function is normally used to clear some sensitive
>> information, like encryption keys, in the buffer before freeing it back
>> to the pool. Memset() is currently used for the buffer clearing. However,
>> it is entirely possible that the compiler may choose to optimize away the
>> memory clearing especially if LTO is being used. To make sure that this
>> optimization will not happen, memzero_explicit(), which is introduced
>> in v3.18, is now used in kzfree() to do the clearing.
>>
>> Fixes: 3ef0e5ba4673 ("slab: introduce kzfree()")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Waiman Long <longman@redhat.com>
>> ---
>>   mm/slab_common.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/mm/slab_common.c b/mm/slab_common.c
>> index 9e72ba224175..37d48a56431d 100644
>> --- a/mm/slab_common.c
>> +++ b/mm/slab_common.c
>> @@ -1726,7 +1726,7 @@ void kzfree(const void *p)
>>   	if (unlikely(ZERO_OR_NULL_PTR(mem)))
>>   		return;
>>   	ks = ksize(mem);
>> -	memset(mem, 0, ks);
>> +	memzero_explicit(mem, ks);
>>   	kfree(mem);
>>   }
>>   EXPORT_SYMBOL(kzfree);
> This is a good change, but the commit message isn't really accurate.  AFAIK, no
> one has found any case where this memset() gets optimized out.  And even with
> LTO, it would be virtually impossible due to all the synchronization and global
> data structures that kfree() uses.  (Remember that this isn't the C standard
> function "free()", so the compiler can't assign it any special meaning.)
> Not to mention that LTO support isn't actually upstream yet.
>
> I still agree with the change, but it might be helpful if the commit message
> were honest that this is really a hardening measure and about properly conveying
> the intent.  As-is this sounds like a critical fix, which might confuse people.

Yes, I agree that the commit log may look a bit scary. How about the 
following:

The kzfree() function is normally used to clear some sensitive
information, like encryption keys, in the buffer before freeing it back
to the pool. Memset() is currently used for buffer clearing. However
unlikely, there is still a non-zero probability that the compiler may
choose to optimize away the memory clearing especially if LTO is being
used in the future. To make sure that this optimization will never
happen, memzero_explicit(), which is introduced in v3.18, is now used
in kzfree() to future-proof it.

Cheers,
Longman

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
