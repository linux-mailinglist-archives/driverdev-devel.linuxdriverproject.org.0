Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C921FBE26
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 20:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8C9589574;
	Tue, 16 Jun 2020 18:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Gz2y2hMeVtZ; Tue, 16 Jun 2020 18:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE5C589579;
	Tue, 16 Jun 2020 18:36:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 840661BF3D0
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 18:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EB5F8782C
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 18:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eMsO9paXQIHu for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 18:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6CDA86C41
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 18:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592332591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7/6v2jfN6UIDhJeosnSs1R4UAP7mOiLuFVPEnJvGTnM=;
 b=VsbTXqwl7xxf+MUWbnJM4vCOVIS/iCxA1SAjzyA8FsjzrodShKHnZfMLXBOQL/GHNJH8vC
 OuxP6I6blTXluNjdUqYdGiIeMKVM7wFH4inGVQHpTaw8gw2uwB0FCvyIBJbPEBsvhu17TV
 Bbxsdyz8zlcvC51jFF/xVTwdyLhzHT8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-73-AXrSOJCONRyyvrghDqFtvA-1; Tue, 16 Jun 2020 14:36:27 -0400
X-MC-Unique: AXrSOJCONRyyvrghDqFtvA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2578680332A;
 Tue, 16 Jun 2020 18:36:22 +0000 (UTC)
Received: from llong.remote.csb (ovpn-114-156.rdu2.redhat.com [10.10.114.156])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3B77519C71;
 Tue, 16 Jun 2020 18:36:16 +0000 (UTC)
Subject: Re: [PATCH v5 2/2] mm, treewide: Rename kzfree() to kfree_sensitive()
To: Andrew Morton <akpm@linux-foundation.org>
References: <20200616154311.12314-1-longman@redhat.com>
 <20200616154311.12314-3-longman@redhat.com>
 <20200616110944.c13f221e5c3f54e775190afe@linux-foundation.org>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <65002c1e-5e31-1f4e-283c-186e06e55ef0@redhat.com>
Date: Tue, 16 Jun 2020 14:36:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200616110944.c13f221e5c3f54e775190afe@linux-foundation.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 virtualization@lists.linux-foundation.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-stm32@st-md-mailman.stormreply.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-scsi@vger.kernel.org, James Morris <jmorris@namei.org>,
 Matthew Wilcox <willy@infradead.org>, linux-wpan@vger.kernel.org,
 David Rientjes <rientjes@google.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-nfs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 netdev@vger.kernel.org, wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/16/20 2:09 PM, Andrew Morton wrote:
> On Tue, 16 Jun 2020 11:43:11 -0400 Waiman Long <longman@redhat.com> wrote:
>
>> As said by Linus:
>>
>>    A symmetric naming is only helpful if it implies symmetries in use.
>>    Otherwise it's actively misleading.
>>
>>    In "kzalloc()", the z is meaningful and an important part of what the
>>    caller wants.
>>
>>    In "kzfree()", the z is actively detrimental, because maybe in the
>>    future we really _might_ want to use that "memfill(0xdeadbeef)" or
>>    something. The "zero" part of the interface isn't even _relevant_.
>>
>> The main reason that kzfree() exists is to clear sensitive information
>> that should not be leaked to other future users of the same memory
>> objects.
>>
>> Rename kzfree() to kfree_sensitive() to follow the example of the
>> recently added kvfree_sensitive() and make the intention of the API
>> more explicit. In addition, memzero_explicit() is used to clear the
>> memory to make sure that it won't get optimized away by the compiler.
>>
>> The renaming is done by using the command sequence:
>>
>>    git grep -w --name-only kzfree |\
>>    xargs sed -i 's/\bkzfree\b/kfree_sensitive/'
>>
>> followed by some editing of the kfree_sensitive() kerneldoc and adding
>> a kzfree backward compatibility macro in slab.h.
>>
>> ...
>>
>> --- a/include/linux/slab.h
>> +++ b/include/linux/slab.h
>> @@ -186,10 +186,12 @@ void memcg_deactivate_kmem_caches(struct mem_cgroup *, struct mem_cgroup *);
>>    */
>>   void * __must_check krealloc(const void *, size_t, gfp_t);
>>   void kfree(const void *);
>> -void kzfree(const void *);
>> +void kfree_sensitive(const void *);
>>   size_t __ksize(const void *);
>>   size_t ksize(const void *);
>>   
>> +#define kzfree(x)	kfree_sensitive(x)	/* For backward compatibility */
>> +
> What was the thinking here?  Is this really necessary?
>
> I suppose we could keep this around for a while to ease migration.  But
> not for too long, please.
>
It should be there just for 1 release cycle. I have broken out the btrfs 
patch to the btrfs list and I didn't make the kzfree to kfree_sensitive 
conversion there as that patch was in front in my patch list. So 
depending on which one lands first, there can be a window where the 
compilation may fail without this workaround. I am going to send out 
another patch in the next release cycle to remove it.

Cheers,
Longman

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
