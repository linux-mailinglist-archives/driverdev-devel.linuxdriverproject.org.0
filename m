Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C5920A7E9
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 00:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D3B125D4A;
	Thu, 25 Jun 2020 22:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Pu44SGPYZvY; Thu, 25 Jun 2020 22:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 320A225CBB;
	Thu, 25 Jun 2020 22:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 432BD1BF599
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 22:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FCA58822C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 22:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b953Ze6GUCxG for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 22:00:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11BAF87F59
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 22:00:24 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id l63so3945756pge.12
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 15:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GBzH//KmJweZqU1/t4NDIS0bmXLOLviC6svDPzdyyOU=;
 b=ovEAbNeoADhejrcUiR/6HkFpdj3T1nph5TiVN9nX370M9gg2pbnG12T930k7++sHfV
 Forn6VTlRAgwyxGMnZBmoFz9/AL37L7g/dIOrb/xMQDNCkrnixbnvQViR7KTvecMsCB1
 ufdYVecs/GCD8jMoHNvUFp2eoO+G7EJMoccx4FjZGhKt1G9A221dhFWkQ7JhgFwUnUvG
 46YcfTDkep9+1mrrOLqM1k1BoryUDIEbpgEovYm7UXAo2w7oGN/oisxa9BeubEcYr9xc
 QFFLXm9+OkYeoJ6c59/vUrA/tHR4IypB6fweoMq4vzFKwHiokVdaT/E4fFcD/1XUiErB
 D3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GBzH//KmJweZqU1/t4NDIS0bmXLOLviC6svDPzdyyOU=;
 b=EM3dis0HKMOfMrX7/J4YbOz2bpD3ii+WALrb4CGrLGVTm4lSeGSRcdpT7/Z0kA18UX
 fM1KfW30bh26DqVvAzZnvWkaOG2gtQ+FGWB0Rg4YKDpKqm6UDm9oiuJJTfIg4hWbbzj3
 enoF36kqOz3PuCS4oYCfFMd/hSHD54r3cIlEYM/SRBraoG2qtp9mayUxCNbDD3lNJJN/
 r1uMXKWTJC332WewdsR3AEi84EMjXKDyu82a56MVwu8KTIeZB3hMV3Ba5ZKeBf940INX
 mxE6JJPiuxzxpBvYFUUtcK143+AEwM1YP0KHu4FZWlqgruBgMPRwWCPCIsFLFq1BWamV
 QgZg==
X-Gm-Message-State: AOAM531oHe5cRjcY7DB5YBXslQ4RaTjBcMH85r4Sm6NqR2e2BVMCcjQu
 QizxD5xSXAUG+1qmLIiebhA=
X-Google-Smtp-Source: ABdhPJzU9yjQDKc53mVohB8PcCBFq+VAFz19hDFTx9L9+PjvpN7QtGGxkeJh0i6E5cg5C2Y7emnEvw==
X-Received: by 2002:aa7:85cd:: with SMTP id z13mr36414397pfn.321.1593122423657; 
 Thu, 25 Jun 2020 15:00:23 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id j36sm21405968pgj.39.2020.06.25.15.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 15:00:23 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 26 Jun 2020 06:00:16 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/2] fix trailing */ in block comment
Message-ID: <20200625220016.g3wqthtauypxlp6g@Rk>
References: <20200625153614.63912-1-coiby.xu@gmail.com>
 <20200625153614.63912-2-coiby.xu@gmail.com>
 <20200625172510.GF2549@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625172510.GF2549@kadam>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 08:25:10PM +0300, Dan Carpenter wrote:
>The subject isn't right (no subsystem prefix) and we need a commit
>message.
>
>regards,
>dan carpenter

Thank you for pointing out the exact problems!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
