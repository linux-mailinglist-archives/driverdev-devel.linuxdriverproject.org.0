Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3B42D9883
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 14:06:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B96698690A;
	Mon, 14 Dec 2020 13:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0GL6gq69rbZ1; Mon, 14 Dec 2020 13:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 249F4868CC;
	Mon, 14 Dec 2020 13:06:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF1CB1BF2FF
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 13:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76FAE2049E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 13:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MhfYZ5oTBhzr for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 13:06:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3AF1E203DF
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 13:06:29 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id 186so15383082qkj.3
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 05:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=0WuvEppDleV+S7pcqpHxzCQflrbfbHnaCqqVzPSevY8=;
 b=WB4x6JSvNaAdYyu5uKrfp9edqClNEBHeo80crhHJgzMSX7V+9akduyKk+G6dctmVp+
 x9+JSCnFXt17Kea5ydmnhC/J8tM2e9zhPb+7i7UtRRQUikme8UaUdo9+OMBD0KiupAKB
 SJCMUIjMzlxjUgCgpMXeDLPTnRTsyqqgfSZYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=0WuvEppDleV+S7pcqpHxzCQflrbfbHnaCqqVzPSevY8=;
 b=YVLrPVUc8iBKOG/xtjiR1hvXhkIIGPPcgQckVM8jxLdhxALTa5GNSYhf2mKyrvPX4g
 gcyvYruZyAOW42uM9+3RjuTYiYW5VtdlM32m6Rmzg/l++xBHY8wMSuUCKIfPYdsKEMXJ
 y4E0t8ezAAKzM1OqQR34qRmkYEQzwl/g2Iz1rIBi4w0Y+Qos2vBaHj9tShUGbvz5n1T0
 9kyJCmdnKQ+AvHmp4shX2LGZiJtkbdUmjOTGVemMKgE/1E+XVoRHrcmSsLsmIDOoxpIR
 jQOJM+wHVe1XL3f05oU0rKALey62xQ5QzCzSoaGz5XK2PpLgFIoobGVtbYFGH71ypHzZ
 pWpw==
X-Gm-Message-State: AOAM533+lzBwayr29KU/IrAmhnLHQEl5fhJSvX1m6EC/CpVTka7Z71Ur
 AH/h3RZX1SsK+W3yza/94ZP+WQ==
X-Google-Smtp-Source: ABdhPJw94VHAaeYO/S57fRpgTfG5neMu6DcTMz24l3inWNQg2cpmf5vYTNLAlzT1E3QnXvk8n5wLdg==
X-Received: by 2002:a37:5242:: with SMTP id g63mr31559196qkb.317.1607951188064; 
 Mon, 14 Dec 2020 05:06:28 -0800 (PST)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id x47sm14799292qtb.86.2020.12.14.05.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 05:06:26 -0800 (PST)
Date: Mon, 14 Dec 2020 08:06:25 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH AUTOSEL 5.9 15/23] scsi: storvsc: Validate length of
 incoming packet in storvsc_on_channel_callback()
Message-ID: <20201214130625.x2v53xhx5xw6jp4o@chatter.i7.local>
Mail-Followup-To: Dan Carpenter <dan.carpenter@oracle.com>,
 Andrea Parri <parri.andrea@gmail.com>,
 Sasha Levin <sashal@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 devel@linuxdriverproject.org,
 Saruhan Karademir <skarade@microsoft.com>
References: <20201212160804.2334982-1-sashal@kernel.org>
 <20201212160804.2334982-15-sashal@kernel.org>
 <20201212180901.GA19225@andrea> <20201214110711.GB2831@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201214110711.GB2831@kadam>
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Sasha Levin <sashal@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, devel@linuxdriverproject.org,
 Saruhan Karademir <skarade@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 14, 2020 at 02:07:11PM +0300, Dan Carpenter wrote:
> On Sat, Dec 12, 2020 at 07:09:01PM +0100, Andrea Parri wrote:
> > Hi Sasha,
> > 
> > On Sat, Dec 12, 2020 at 11:07:56AM -0500, Sasha Levin wrote:
> > > From: "Andrea Parri (Microsoft)" <parri.andrea@gmail.com>
> > > 
> > > [ Upstream commit 3b8c72d076c42bf27284cda7b2b2b522810686f8 ]
> > 
> > FYI, we found that this commit introduced a regression and posted a
> > revert:
> > 
> >   https://lkml.kernel.org/r/20201211131404.21359-1-parri.andrea@gmail.com
> > 
> > Same comment for the AUTOSEL 5.4, 4.19 and 4.14 you've just posted.
> > 
> 
> Konstantin, is there anyway we could make searching lore.kernel.org
> search all the mailing lists?  Right now we can only search one mailing
> list at a time.

This functionality is coming in the next version of public-inbox and 
should be available on lore.kernel.org within the next little while.

https://lore.kernel.org/workflows/20201201184814.GA32272@dcvr/

-K
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
