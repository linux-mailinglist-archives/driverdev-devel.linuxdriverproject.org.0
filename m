Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E674576BA
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 19:52:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4180381AF5;
	Fri, 19 Nov 2021 18:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mLEJRIH5qeIx; Fri, 19 Nov 2021 18:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A21E9819C8;
	Fri, 19 Nov 2021 18:51:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 571631BF20F
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 18:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 500FD41C0E
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 18:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRHSicEXAbuq for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 18:51:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 803F541C06
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 18:51:46 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id y13so46338667edd.13
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 10:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=y5152iVHll0g+BnXlIixI8+5pixdhUQayUeDmJybp24=;
 b=E33ogDCaVL7hLV1QLSV72rIaY1HIeDnknm3VdcMdNBRzH/MeyvsGUc9/XFaPtsDDfs
 dWgeH4i9BI5q14C74mh5sUSOuBA1irGJkb2dj5jtx0TFggVrZKiOGrmSguZ7pGUJNxYX
 KLcXfobSy+sKBn/qum7nRCa/Qb4FXmzq9QWPo/qppNksogCrcsGWByiuq/Pwqd1yHXWK
 t4hYfc0ROI3dfC5u7TqI5/Iv0Pcq5T8y9gooku406NThOHXjz9hmX009Z7qmAcZvXQe2
 3yoPCGqeMwbHxfRCNtcXnyxVmDXtk3JaihbzFS5TDzfej8dfyxdSbUwvQ2gHnMGnVyNv
 /TPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y5152iVHll0g+BnXlIixI8+5pixdhUQayUeDmJybp24=;
 b=IVK10ciCs+64OxlMsfaaBtMKLcYzDNbLJyUHeoEk6NnauB54zqv1XlOxbnIgAxU0Ox
 2BKSRTgPgr7Gw5xCKQJfukc3kM5iIniHIKeu0WgtUNtYiV1fZlDfOZsvqXbKqxkMGsiQ
 n+uMefAK4gtdA042l3fAfUYqRmjJkBM//YjTZN9GT8l56a3dYMoevTuqJoguGbUsbjgX
 cYRHJbBSEQAKPlnyKL/XoRcAWkazuKoQphFHnuNBCRYHa8rGNEoSiKrCKvaKnlsxiT9z
 3nroyxwgNhfKEqmm0gJ5rU4vc0OkN9yrlbtDoxWVqqsxytVvtu9YheHSs83tKzn3f7x+
 Jnog==
X-Gm-Message-State: AOAM532pQ/A2Nf4rFM/xDjzbd1mOGuSdEfMs5vr5Ljj3I+XrKgn9K5sd
 rBmHqQQbSr+Cf00B9I3oH3o=
X-Google-Smtp-Source: ABdhPJziR+03/6XqZfZgaSJIU7yr0BagP6w5l9qrr5XQOZBdA2jXWn7yLc4TnaM4+07RwCFiKcBzqQ==
X-Received: by 2002:a17:906:6a1a:: with SMTP id
 qw26mr10732467ejc.489.1637347904326; 
 Fri, 19 Nov 2021 10:51:44 -0800 (PST)
Received: from bulldog (host-95-252-102-163.retail.telecomitalia.it.
 [95.252.102.163])
 by smtp.gmail.com with ESMTPSA id s4sm303156ejn.25.2021.11.19.10.51.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 10:51:43 -0800 (PST)
Date: Fri, 19 Nov 2021 19:51:41 +0100
From: Your Name <alb3rt0.m3rciai@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211119185141.GA396725@bulldog>
References: <20211118202718.GA152832@t470p> <20211119085138.GR26989@kadam>
 <20211119122351.GA2519@alb3rt0-VirtualBox>
 <YZeYsip9CD8YkKgl@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZeYsip9CD8YkKgl@kroah.com>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> What caused you to pick that one?

My mistake :(

I was reading "Submitting patches: the essential guide
to getting your code into the kernel" and I was confuse dby this line
"See the T: entry for the subsystem in the MAINTAINERS file to find 
that tree, or simply ask the maintainer if the tree is not listed
there." supposing that master branch was the correct one.

I'm moving on "staging-next" branch as you suggest.

Regards,

Alberto
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
