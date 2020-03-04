Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C57B1797A4
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 19:13:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A6C88499E;
	Wed,  4 Mar 2020 18:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mvVUn7EqM2vA; Wed,  4 Mar 2020 18:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9401685A84;
	Wed,  4 Mar 2020 18:13:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12E9C1BF315
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 18:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E84120369
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 18:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1RMFsezcMd1Z for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 18:13:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 667361FF11
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 18:13:43 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i13so1362294pfe.3
 for <devel@driverdev.osuosl.org>; Wed, 04 Mar 2020 10:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hO3w4DJRn7wTnz66wgWmC++WgyY9DoLHVWfMImbW8/o=;
 b=MRC+I6IuPV6i8l4nSO0sW2+Ske/TqndiMSE3AxrrUaGT0c+zsVsFNOA0AdsgeSdxaY
 wLcg8ECuDYkTG40t4WEVikBHsMUXIXNz0thls9PuvC14LtzJlgC+yiw+mnwcYqD8ABmk
 /+XAkn4ZLwqUqi8dU6gNFCIXzXZfOWgOyQAsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hO3w4DJRn7wTnz66wgWmC++WgyY9DoLHVWfMImbW8/o=;
 b=onhYVfpUup8Mf82oGj/YPxEt/XUBZs0AtPl+S/1eAeALHFNzmKhaxJwTeIP/W277Ms
 8FIz86uy5/07Owf8XBAqT6lBl+GBaCIfKikOgl3ZazWT6Gwq8zVcPZN/y21OEvICpfhp
 N3Qu04G69UKaFei2w+qBauf40H6bWkN4lfjpiK353uxhqJ9nu3I9k7ECPMlm4Y7r8EWZ
 zUEQA4OnuU5pCp5OECu0j94lfSx8lOdUMLT4QWGsijo0WHAFCe3g5cOn/2trZ/ITGJzH
 vVWVZaMmvyKNTTQ7CVYtrqA2TPr5PlAp+7eQBkm1ERGGjIUgvTiSNjqUTSeoSx2Z2NQ3
 hNCw==
X-Gm-Message-State: ANhLgQ0TR5z0YJQsUGbD8gAH8o/52Z3yYXViqYVRIxA08SYlwKGSLWUt
 rwS4abG8BZbluntvKAwO0+NMDw==
X-Google-Smtp-Source: ADFU+vvL8XSLOA0GTBkkKw2dgU6SPfjDqx9VbF027Nkp1x/qfEkrey4TGjVh6Ja3hQMfaMCMT0BRnA==
X-Received: by 2002:a63:1926:: with SMTP id z38mr3591934pgl.303.1583345622972; 
 Wed, 04 Mar 2020 10:13:42 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g12sm28275304pfh.170.2020.03.04.10.13.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 10:13:41 -0800 (PST)
Date: Wed, 4 Mar 2020 10:13:40 -0800
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <202003040951.7857DFD936@keescook>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
 <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
 <20200303093832.GD24372@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303093832.GD24372@kadam>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Alexander Potapenko <glider@google.com>,
 Joe Perches <joe@perches.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 03, 2020 at 12:38:32PM +0300, Dan Carpenter wrote:
> The real fix is to initialize everything manually, the automated
> initialization is a hardenning feature which many people will disable.

I cannot disagree more with this sentiment. Linus has specifically said he
wants this initialization on by default[1], and the major thing holding
that back from happening is that no one working on GCC has had time to
add this feature there. All the kernels I know of that are built with
Clang (Android, Chrome OS, OpenMandriva) either already have this turned
on or have plans to do so shortly.

> So I don't think the hardenning needs to be perfect, it needs to simple
> and fast.

I think it should be able to be intelligently optimized, so I'm all for
finding ways to mark function arguments as "will be initialized" in some
fashion.

-Kees

[1] "Oh, I love that patch." https://lore.kernel.org/lkml/CA+55aFykZL+cSBJjBBts7ebEFfyGPdMzTmLSxKnT_29=j942dA@mail.gmail.com/

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
