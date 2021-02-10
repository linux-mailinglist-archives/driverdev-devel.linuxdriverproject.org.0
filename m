Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F107C316FEC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 20:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80B9F6F61D
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 19:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oqqQ1vcylpCU for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 19:18:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 6828E6F6DA; Wed, 10 Feb 2021 19:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0822600BA;
	Wed, 10 Feb 2021 19:18:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9934C1BF403
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:18:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9215186B66
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1Z3yLfZCBsS for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 19:18:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C81E86B63
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 19:18:22 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id t29so1898309pfg.11
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 11:18:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ApR99pDrW0uAH2QCJrOY4mI9PKbNjGr+XzltIVVOrH0=;
 b=MrlLnwFZR/1wgVLL0IVZSJpoPlKTlwdWoFb1swMDM+3O7EWq4erYATjzHZv0IqN/5r
 m82jG6JoSa5AR1Kuk4kmpsgw+So6rWWnUR9A7YO0Ohtg/f3gOHhGyU/cAR4r3tdaTSC2
 nUpv7Ufbn4e01Bh0F3N6WOibXO78HecfuAPsI5aXsrNxIkNrmJlVn7saIcpEU6vmMHeH
 0ho6hNPGjJCIbV2hHkH69Y02zAvdS2aEXvXuZU1PXnxCN1vbePVPPJlEwwIaD2kaxEcb
 lJYiKAtGcHOO97mTDOZf8jLp0bmr/FGeJgVlcG3PhxHBIVIm4xbDst06vs918jwaCNkh
 MEGQ==
X-Gm-Message-State: AOAM530HniyeCiFWfBbMUWVY5KQCO22vPcqCDZpAWNHwDMaG15C2FN3F
 fBTIF4NG6dbeNkQz6fk7K5gGaVZ46FiddXGm
X-Google-Smtp-Source: ABdhPJwkC3L69KJkl7AP00x+IiPAZ4VJSYzZaVpUK9qBrgTzg2ejJvJWOHTNUKAIwuZl13eWtkGLrA==
X-Received: by 2002:a62:2702:0:b029:1d1:b92a:ef2a with SMTP id
 n2-20020a6227020000b02901d1b92aef2amr4379607pfn.5.1612984701793; 
 Wed, 10 Feb 2021 11:18:21 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id g17sm3283647pfq.135.2021.02.10.11.18.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 11:18:21 -0800 (PST)
Date: Thu, 11 Feb 2021 00:48:16 +0530
From: karthek <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <YCQxeMVM92dtfEpO@karthik-strix-linux.karthek.com>
References: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

check this out
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
