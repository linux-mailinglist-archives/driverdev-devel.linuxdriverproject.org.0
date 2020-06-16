Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0E71FA8EE
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 08:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD4C3876CE;
	Tue, 16 Jun 2020 06:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9Vk_KSjq80Z; Tue, 16 Jun 2020 06:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F6C4876A6;
	Tue, 16 Jun 2020 06:42:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF1871BF302
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 06:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA7218952C
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 06:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O+zbz8nGiJDL for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 06:42:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0525586BC6
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 06:42:12 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id l12so20209382ejn.10
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 23:42:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8yT+7Ta/B3BUGUR35Fz/0p22bghMwTUAxgTnwepounI=;
 b=ExVKjj23DmU5vCSwkmww5xOfH+ygjYQHREmWMDypMaGcjgGxrmtL+sI1tMwNmNG2pd
 Ram+KNWN+evhYlIFXf60kjguUrqKZrqbGTlCJl30Nv4jfQSmsJl3JnA/G8rnAZTL4dPN
 MIDD+CJofl3NpQuXA67Os0gxbddoL9P36OIIqPNfyDZ+wNPLCuQV5ZQVcqi2KLS5Sggz
 /dJVIGJWJuREMhhD+ea2q6RiJyM/wdwuZ+gZaami1wBelmI8Mmf13AyWl4yy9HX1sim+
 b0EgmKejvFZzj+kbsVn1rwUVzrfR1NzXuwMfz6n0nc0v8lxesncvRVzUiTfCJx902Ll+
 rq3g==
X-Gm-Message-State: AOAM530s8s0hT4S1tNQsne4KMlP/b7/J34Dzi+Xra+zay0d7mfZy/g1G
 BVGNFfhk641OGVGCJC6hwX4=
X-Google-Smtp-Source: ABdhPJwG7kr4DUIGgc4iCDEeodlEq5kx0AY8+Z/EURP92P+0Zf4E0UWpXqDGfffbUz9uBG+pBru51g==
X-Received: by 2002:a17:906:ce2f:: with SMTP id
 sd15mr1306745ejb.445.1592289731375; 
 Mon, 15 Jun 2020 23:42:11 -0700 (PDT)
Received: from localhost (ip-37-188-174-201.eurotel.cz. [37.188.174.201])
 by smtp.gmail.com with ESMTPSA id j10sm9734428edf.97.2020.06.15.23.42.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 23:42:10 -0700 (PDT)
Date: Tue, 16 Jun 2020 08:42:08 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 1/3] mm/slab: Use memzero_explicit() in kzfree()
Message-ID: <20200616064208.GA9499@dhcp22.suse.cz>
References: <20200616015718.7812-1-longman@redhat.com>
 <20200616015718.7812-2-longman@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616015718.7812-2-longman@redhat.com>
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, linux-btrfs@vger.kernel.org,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-security-module@vger.kernel.org,
 target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, netdev@vger.kernel.org,
 wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon 15-06-20 21:57:16, Waiman Long wrote:
> The kzfree() function is normally used to clear some sensitive
> information, like encryption keys, in the buffer before freeing it back
> to the pool. Memset() is currently used for the buffer clearing. However,
> it is entirely possible that the compiler may choose to optimize away the
> memory clearing especially if LTO is being used. To make sure that this
> optimization will not happen, memzero_explicit(), which is introduced
> in v3.18, is now used in kzfree() to do the clearing.
> 
> Fixes: 3ef0e5ba4673 ("slab: introduce kzfree()")
> Cc: stable@vger.kernel.org
> Signed-off-by: Waiman Long <longman@redhat.com>

Acked-by: Michal Hocko <mhocko@suse.com>

Although I am not really sure this is a stable material. Is there any
known instance where the memset was optimized out from kzfree?

> ---
>  mm/slab_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index 9e72ba224175..37d48a56431d 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -1726,7 +1726,7 @@ void kzfree(const void *p)
>  	if (unlikely(ZERO_OR_NULL_PTR(mem)))
>  		return;
>  	ks = ksize(mem);
> -	memset(mem, 0, ks);
> +	memzero_explicit(mem, ks);
>  	kfree(mem);
>  }
>  EXPORT_SYMBOL(kzfree);
> -- 
> 2.18.1
> 

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
