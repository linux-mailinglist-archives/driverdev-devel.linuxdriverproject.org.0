Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FBD1FC6D0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 09:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5F0D886A9;
	Wed, 17 Jun 2020 07:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PUCFk2S2Cfvc; Wed, 17 Jun 2020 07:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 481EA88443;
	Wed, 17 Jun 2020 07:12:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D09BD1BF321
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 07:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC1B0877AA
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 07:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D27yS751WDab for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 07:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 026A28778C
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 07:12:16 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id y13so1170676eju.2
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 00:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E5EcWVbc+7tsS+GAmjqiwsU8zuC9ZQ4KDsXaJSfWulo=;
 b=XNJEtBPArl1pKM0msD4JaXHpWMBFiplHmCpOxH7moyMNwsGscQW7QJE+FUtu+n0zg2
 fICUV3+VBfkQBcUk8oDqhyme3L0XUYx58lxNiX92CRpoQeHOuoK8uv9hwabd5B83z8m0
 ug97mj6Dag6qErzNq8c5LlXhoB9jStSKPVx94j64JXACgec2bvc7ZoIGwCmUDzn9SuRx
 HIbiL/Iaeb0l2xbQSIxBiRDSk2UA+Un/PtOKNHVigsWcmJ6Tb6SVbtMK8G3CEsB5f5Z6
 oMKV29z76mW7BKM/nc0NTOHiqPEHrWnoDBzpEPIUwrhRij72s82jGDJIvgqMhGbBwubZ
 YF4Q==
X-Gm-Message-State: AOAM533ZfUBPKlAQq9I7wfz2t4C4vE5VCGoen9P9OG25qKf83AB1gAwQ
 EchoqvQKlQfF342CNq7WbRM=
X-Google-Smtp-Source: ABdhPJzxXEZ/32Vk1uutSgWgDm/2Kml+FRFv6q/oUOzaHXvM3d9a7wcEm5DrSyb0iZ8v3ZPtZ+pKKg==
X-Received: by 2002:a17:906:2581:: with SMTP id
 m1mr6681797ejb.89.1592377934427; 
 Wed, 17 Jun 2020 00:12:14 -0700 (PDT)
Received: from localhost (ip-37-188-158-19.eurotel.cz. [37.188.158.19])
 by smtp.gmail.com with ESMTPSA id g22sm12516138ejo.1.2020.06.17.00.12.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 00:12:13 -0700 (PDT)
Date: Wed, 17 Jun 2020 09:12:12 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v4 0/3] mm, treewide: Rename kzfree() to kfree_sensitive()
Message-ID: <20200617071212.GJ9499@dhcp22.suse.cz>
References: <20200616015718.7812-1-longman@redhat.com>
 <fe3b9a437be4aeab3bac68f04193cb6daaa5bee4.camel@perches.com>
 <20200616230130.GJ27795@twin.jikos.cz>
 <20200617003711.GD8681@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617003711.GD8681@bombadil.infradead.org>
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
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, dsterba@suse.cz,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-scsi@vger.kernel.org,
 James Morris <jmorris@namei.org>, kasan-dev@googlegroups.com,
 linux-wpan@vger.kernel.org, David Rientjes <rientjes@google.com>,
 Waiman Long <longman@redhat.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-pm@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, virtualization@lists.linux-foundation.org,
 linux-integrity@vger.kernel.org, linux-nfs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 netdev@vger.kernel.org, wireguard@lists.zx2c4.com, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue 16-06-20 17:37:11, Matthew Wilcox wrote:
> On Wed, Jun 17, 2020 at 01:01:30AM +0200, David Sterba wrote:
> > On Tue, Jun 16, 2020 at 11:53:50AM -0700, Joe Perches wrote:
> > > On Mon, 2020-06-15 at 21:57 -0400, Waiman Long wrote:
> > > >  v4:
> > > >   - Break out the memzero_explicit() change as suggested by Dan Carpenter
> > > >     so that it can be backported to stable.
> > > >   - Drop the "crypto: Remove unnecessary memzero_explicit()" patch for
> > > >     now as there can be a bit more discussion on what is best. It will be
> > > >     introduced as a separate patch later on after this one is merged.
> > > 
> > > To this larger audience and last week without reply:
> > > https://lore.kernel.org/lkml/573b3fbd5927c643920e1364230c296b23e7584d.camel@perches.com/
> > > 
> > > Are there _any_ fastpath uses of kfree or vfree?
> > 
> > I'd consider kfree performance critical for cases where it is called
> > under locks. If possible the kfree is moved outside of the critical
> > section, but we have rbtrees or lists that get deleted under locks and
> > restructuring the code to do eg. splice and free it outside of the lock
> > is not always possible.
> 
> Not just performance critical, but correctness critical.  Since kvfree()
> may allocate from the vmalloc allocator, I really think that kvfree()
> should assert that it's !in_atomic().  Otherwise we can get into trouble
> if we end up calling vfree() and have to take the mutex.

FWIW __vfree already checks for atomic context and put the work into a
deferred context. So this should be safe. It should be used as a last
resort, though.

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
