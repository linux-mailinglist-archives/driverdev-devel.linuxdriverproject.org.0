Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1322A1EA1F6
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jun 2020 12:37:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 659A087918;
	Mon,  1 Jun 2020 10:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JdRRNFBTXuxm; Mon,  1 Jun 2020 10:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AD1486CD4;
	Mon,  1 Jun 2020 10:37:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7038A1BF401
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 10:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6CFFE86CD4
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 10:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5RPG1dp6zDw for <devel@linuxdriverproject.org>;
 Mon,  1 Jun 2020 10:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 932D780862
 for <devel@driverdev.osuosl.org>; Mon,  1 Jun 2020 10:37:00 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id n24so8759598ejd.0
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 03:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ue0RfH9mcbqs6OOPuFsUYFCC+BDZdNW72pIEeu8wOoQ=;
 b=vQ6Vo707SyMJYC2o7E4SAZHV0ChEQ6uOuBoo1FhRe6Y2LzEE/tDgIowjO+yTsr2h5m
 Obxj2Pm690sgAl7DlOlFoZuTcDP3ya+7SX5tniddKmZUCYtP2hazox3naifTG+rHcSaI
 /9W5pJcENZZDXUSIxRy6btgH84K+BME1O8VHU/HF05xOsDMdSvTnN8MYdAYcMz7TxCiP
 zkWQSqUKQpl2u+gpiNeE5eo79+pBvLGeZ1FRFP6VcPE1B3ZkEfjnhtdlCr1W9vGcuQkl
 RJYPlTOQUFH2Y6nuMOXHzcEwQB+PYSwr2zPQKe/keW2FU8ofFsgvU6rsMoqz2uioI2Dy
 XQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ue0RfH9mcbqs6OOPuFsUYFCC+BDZdNW72pIEeu8wOoQ=;
 b=ff2Kil2YNNe69NFEbNdYk5xHBdtAnR0GO+c2HIJBGFq4VoGw5gNafIEBbqARNopIGV
 Xal8NRhj3eYjbpGSSddG4louyZOxz2M4POWmHOFFavWScwNGlLVRZHkfRMfd2mCYVrrv
 7U7dsyRtMMFt+5X0qTFgvSHc9i/BVdc8EkQCOzifSsj2yPRMYcbJaB9S75sjfUz6+seO
 NXQU1gIMbsXZEImTrIypn9byxMfcXNDAjridd+nVc9hslyBkGmk7ofAwtbNh4aBcnAyw
 X7pjApR5fMvmucq8qr54QYjizy5rvcoC3ua6Ncfj6d9+lu1sKmyZcBvlZREDQyLPjGA5
 Tuog==
X-Gm-Message-State: AOAM533YJoZKgkPxLJ+f9OjnJxTcxaBk7DheMVUqNYMvV+NPjm8MAYJb
 9A2SgB5b1jrd3ABeM5KzM84=
X-Google-Smtp-Source: ABdhPJykpSExvDz3HfRnnW9p+LN7xTwwzRdDp8ESAGy1qxIfQmdKdE058SE2ntN2E5PZ594+wkFXTg==
X-Received: by 2002:a17:906:11d9:: with SMTP id
 o25mr3418753eja.377.1591007818872; 
 Mon, 01 Jun 2020 03:36:58 -0700 (PDT)
Received: from ubuntu (host-85-26-109-233.dynamic.voo.be. [85.26.109.233])
 by smtp.gmail.com with ESMTPSA id ch14sm15746997edb.33.2020.06.01.03.36.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 03:36:58 -0700 (PDT)
Date: Mon, 1 Jun 2020 12:36:55 +0200
From: Jil Rouceau <jilrouceau@gmail.com>
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH] staging: qlge: qlge_main.c: fixed spaces coding style
 issues
Message-ID: <20200601123326.2d755bfa@ubuntu>
In-Reply-To: <20200601051947.GA12667@f3>
References: <20200529151749.34018-1-jilrouceau@gmail.com>
 <20200601051947.GA12667@f3>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 1 Jun 2020 14:19:47 +0900
Benjamin Poirier <benjamin.poirier@gmail.com> wrote:

> On 2020-05-29 17:17 +0200, Jil Rouceau wrote:
> > Fixed the missing spaces before and after binary operators.
> > 
> > Signed-off-by: Jil Rouceau <jilrouceau@gmail.com>  
> 
> This patch does not apply cleanly. I think your base tree is missing
> commit ec269f1250c6 ("staging: qlge: Remove unnecessary spaces in
> qlge_main.c").

Indeed, I was using Linus' tree instead of linux-next, thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
