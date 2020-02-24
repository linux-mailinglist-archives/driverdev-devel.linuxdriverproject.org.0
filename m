Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0854F16AB4D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37C0B87553;
	Mon, 24 Feb 2020 16:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Gn9CL5wuxeE; Mon, 24 Feb 2020 16:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D31E8733D;
	Mon, 24 Feb 2020 16:26:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDE861BF3EE
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EAA5D87447
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PLBTZyUckyFU for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:26:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 286918733D
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:26:28 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id r77so2021013pgr.12
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=m2SYjv+WSIEyCd9YYi/1aawcHK0IZwr//QTPDichDN0=;
 b=IdepHxc6KkcyTk8ncFDkh5MXIGnZ/47N3RqgZ0sd8tuKKO9B8glAf9z2NKCH30gRkw
 ZqQCm+kELeNc7VR7B2uKTrTTHWazMdrBrp5gdRh8UK+mW9kOuwTpmWlyqID/wG3dxsZd
 wIL5kof/O4t5+x8WtjaMRFEw0F/udp/D43ah/OeAJFiRLwROHo7ODPGjS4E5Xtwcrku4
 bLueJRXUC8WAKCJkumnDTB3TnJBBlBYqh72xwUjMThPTGnhEpbZFbhRuyvHvgNszJzkv
 4QZhZIxxug87/FXM9arlkD8Axb9TNGd1vqXkDAowPf8rVr6jKFu/iAxFVww2Se95c+PO
 fM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m2SYjv+WSIEyCd9YYi/1aawcHK0IZwr//QTPDichDN0=;
 b=G708NlIP6jCi6AeES1HnrIqSCBHfS75ZDDWS2zLdR3aWhXXc4+zC7zvLgWEX8ESGV/
 /77yA9wDr3MFTWjLPlPCNir0c3/TJIE2NNgldyhArCc0WSd/P/rKKNaTLDbh7qKyM+RG
 HQLhwpQNHpewxyhewzHVu1FrvJBDoCax9f80su9Rfzh25dD65Ir+asoDVTHST5CoYT5Y
 mrqLp4Njm8ckLtCrJliRbXqJNgILQzWPuQFs8UFy2W/ZNx9qV+QTADa3JpbbY+x63IKS
 0zSxEJ63hOM+ean9bQITOWUilCh9prTRzle8l03m3kFoDM7DW527uWUxEJj3x/ZOcF7e
 m5Hg==
X-Gm-Message-State: APjAAAUacWDvNq1/XuA4nIeEjBEMYRAr1zgSPM9M9AH0TtiEG+9AOOhg
 sj3SJ0y3zcA19ykSbnmjjU676Q==
X-Google-Smtp-Source: APXvYqy2QAxSH9ctP0UdJ+fs8W2TMLmCqGTbi8rEuL1kdzOsyFTeq3R31E6PiTreju3ez36x0mrg0A==
X-Received: by 2002:a62:7b93:: with SMTP id
 w141mr53773935pfc.226.1582561587654; 
 Mon, 24 Feb 2020 08:26:27 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.170])
 by smtp.gmail.com with ESMTPSA id y3sm14025292pff.52.2020.02.24.08.26.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 08:26:27 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Mon, 24 Feb 2020 21:56:21 +0530
To: Joe Perches <joe@perches.com>, jerome.pouiller@silabs.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: wfx: data_tx.c: match parentheses alignment
Message-ID: <20200224162621.GA6611@kaaira-HP-Pavilion-Notebook>
References: <20200223193201.GA20843@kaaira-HP-Pavilion-Notebook>
 <8c458c189abb45fb3021f7882a40d28a24cc662d.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c458c189abb45fb3021f7882a40d28a24cc662d.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 06:13:32AM -0800, Joe Perches wrote:
> On Mon, 2020-02-24 at 01:02 +0530, Kaaira Gupta wrote:
> > Match next line with open parentheses by giving appropriate tabs.

Changed the first word to caps. Will keep this in mind from now on.
Thanks!

> 
> This patch is only for data_tx.c
> 
> There are many more parentheses that are not aligned
> in staging/wfx in other files.
> 
> Realistically, either change the subject to show
> that it's only for data_tx or do them all.

I have made the changes in the subject line and will submit a separate
patch with clean-ups in all the other files

> 
> (but not traces.h, those use a different style)
> 
> $ ./scripts/checkpatch.pl -f --terse --nosummary --types=parenthesis_alignment drivers/staging/wfx/*.[ch]
> drivers/staging/wfx/data_tx.c:303: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/data_tx.c:371: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/debug.c:35: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:35: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:45: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:55: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:72: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:97: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:106: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:118: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:133: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/key.c:147: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/queue.c:393: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/queue.c:408: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/queue.c:433: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/sta.c:123: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/sta.c:235: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/sta.c:291: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/sta.c:340: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/sta.c:717: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:156: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:194: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:206: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:211: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:234: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:257: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:265: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:271: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:278: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:296: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:302: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:307: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:313: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:324: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:329: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:334: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:351: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:362: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:416: CHECK: Alignment should match open parenthesis
> drivers/staging/wfx/traces.h:418: CHECK: Alignment should match open parenthesis
> 
> 
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
