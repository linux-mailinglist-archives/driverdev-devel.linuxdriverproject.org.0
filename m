Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F05A1F9F7A
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 20:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C62586B60;
	Mon, 15 Jun 2020 18:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSAtVSoVjyWf; Mon, 15 Jun 2020 18:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D85E586ACA;
	Mon, 15 Jun 2020 18:40:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C41BF1BF3FB
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 18:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ACB5D24F76
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 18:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYjyOUtYdL8Y for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 18:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by silver.osuosl.org (Postfix) with ESMTPS id 8870224E4B
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 18:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592246429;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3LdVapGy9WTsAkwpfNEzCTfQe3Pij8/lM5ySXZsHExs=;
 b=OvjaSOOCfyp307NW0Ll0v8HBOtktVG83FBcqFzJ1QSR5rShNapnPdRP4kax9ApS19ZA8eP
 zODD4GVwCIlP6FCFeiKCeDK6hOgdKoUvRXwL2J6jdxsT+heXdTtquL9P+XZptqtG1ekpr3
 29TEnsoBdGPs2biowVKGBTC+bNdH1ac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-n3G_ZfGUONug8wkjJytxqA-1; Mon, 15 Jun 2020 14:40:12 -0400
X-MC-Unique: n3G_ZfGUONug8wkjJytxqA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5F43184D144;
 Mon, 15 Jun 2020 18:40:06 +0000 (UTC)
Received: from llong.remote.csb (ovpn-117-41.rdu2.redhat.com [10.10.117.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3972B5D9CC;
 Mon, 15 Jun 2020 18:40:00 +0000 (UTC)
Subject: Re: [PATCH 1/2] mm, treewide: Rename kzfree() to kfree_sensitive()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200413211550.8307-1-longman@redhat.com>
 <20200413211550.8307-2-longman@redhat.com> <20200615180753.GJ4151@kadam>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <9d084be2-29a3-7757-9386-20dbaeb5fc24@redhat.com>
Date: Mon, 15 Jun 2020 14:39:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200615180753.GJ4151@kadam>
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
Cc: linux-cifs@vger.kernel.org, linux-wireless@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 virtualization@lists.linux-foundation.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 kasan-dev@googlegroups.com, cocci@systeme.lip6.fr, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, x86@kernel.org,
 James Morris <jmorris@namei.org>, Matthew Wilcox <willy@infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, linux-pm@vger.kernel.org,
 ecryptfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-btrfs@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-wpan@vger.kernel.org, wireguard@lists.zx2c4.com,
 linux-ppp@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/15/20 2:07 PM, Dan Carpenter wrote:
> On Mon, Apr 13, 2020 at 05:15:49PM -0400, Waiman Long wrote:
>> diff --git a/mm/slab_common.c b/mm/slab_common.c
>> index 23c7500eea7d..c08bc7eb20bd 100644
>> --- a/mm/slab_common.c
>> +++ b/mm/slab_common.c
>> @@ -1707,17 +1707,17 @@ void *krealloc(const void *p, size_t new_size, gfp_t flags)
>>   EXPORT_SYMBOL(krealloc);
>>   
>>   /**
>> - * kzfree - like kfree but zero memory
>> + * kfree_sensitive - Clear sensitive information in memory before freeing
>>    * @p: object to free memory of
>>    *
>>    * The memory of the object @p points to is zeroed before freed.
>> - * If @p is %NULL, kzfree() does nothing.
>> + * If @p is %NULL, kfree_sensitive() does nothing.
>>    *
>>    * Note: this function zeroes the whole allocated buffer which can be a good
>>    * deal bigger than the requested buffer size passed to kmalloc(). So be
>>    * careful when using this function in performance sensitive code.
>>    */
>> -void kzfree(const void *p)
>> +void kfree_sensitive(const void *p)
>>   {
>>   	size_t ks;
>>   	void *mem = (void *)p;
>> @@ -1725,10 +1725,10 @@ void kzfree(const void *p)
>>   	if (unlikely(ZERO_OR_NULL_PTR(mem)))
>>   		return;
>>   	ks = ksize(mem);
>> -	memset(mem, 0, ks);
>> +	memzero_explicit(mem, ks);
>          ^^^^^^^^^^^^^^^^^^^^^^^^^
> This is an unrelated bug fix.  It really needs to be pulled into a
> separate patch by itself and back ported to stable kernels.
>
>>   	kfree(mem);
>>   }
>> -EXPORT_SYMBOL(kzfree);
>> +EXPORT_SYMBOL(kfree_sensitive);
>>   
>>   /**
>>    * ksize - get the actual amount of memory allocated for a given object
> regards,
> dan carpenter
>
Thanks for the suggestion. I will break it out and post a version soon.

Cheers,
Longman

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
