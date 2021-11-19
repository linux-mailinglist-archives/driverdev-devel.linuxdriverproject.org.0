Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 589E3456FC0
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 14:37:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1CA3409E4;
	Fri, 19 Nov 2021 13:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S62pOwsEI9da; Fri, 19 Nov 2021 13:37:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23995403DE;
	Fri, 19 Nov 2021 13:36:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC1D01BF29A
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 13:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB1B34037D
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 13:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgQv-oupULIW for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 13:36:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 324B5409C5
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 13:36:48 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id w1so42727256edd.10
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 05:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/7acFNBdyxV/87Oh/1ES50ggSz7v1Xh7gO8AgC3eUAo=;
 b=MwoiA9ZpZU6WobBoroswDXi+F3hS2NS42GJXD6QPAAEFECvvJyEYpOoXTHmIu/owTM
 bBCGuMhGSSHrXutFFjiVQ2dluGV1zODDDrs5yFtO1VWcVu1RG9amnFH/xJPQEYet/bmO
 gsod+7JTsJZIYUei/y24koS6uhJkvSnoierQu8RLb7tACuV7aowV9fsxMNNp9LprdUfB
 dSVeRHnpaIQ/kzCTwzScs1IrJWvMR2+v8C2yHsZSLgapc4ZdbbcwJL6CuXOuFMcMcx4A
 7IEiOPn2xngUM9ewCAXzphQDrmxOVpq50glRJhL2weFTN2WI0TJcPHgfmFSBHnp8ZGpB
 8LaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/7acFNBdyxV/87Oh/1ES50ggSz7v1Xh7gO8AgC3eUAo=;
 b=nd2pbqvCr0spGA4PAQH2k/9UR4YjMI3FlklX6RLcRKIlyuVyqCzjqD7pC0fr5IWonh
 EzjgaJuXSwKNZK2uai4dNkvO8bVWqopU1UwPjlK8ChfA6iHYXFwzRa+3TPMugt8z8j4O
 lpIR2UXDsfiDUj6bh3bbDgYLYQmm3xdN5NkAOVb7/SaPN2zBQWL119Dzx3VND9wS5C4H
 z3iw8i/brCHaZ50T9JStUyfOk2hrJgJ5ejiop1TXRYemAyM0627OJubFpdUvAUP2DpqZ
 08V2av/ENtSeGtpnRfoy8idvSclkM0JKzRMIXiLanjQ3GmCV8STKXZ27DNYhrzNS8Izq
 DZng==
X-Gm-Message-State: AOAM530uZXPk+8J6u+UWtHgv5zzLKvk0Fn6s2cUSpAPRRZQlZx0iS0+Q
 BgBUTIFXZYnb4C2OZqrr6Yr08b6tbsc=
X-Google-Smtp-Source: ABdhPJzUnVDC1MGnsRrwYsbezA3m4+eqD80B+bE8epgxwxwdw6buL0uluuiv2xldp1D/DtXNbXdZKw==
X-Received: by 2002:a17:906:6582:: with SMTP id
 x2mr8129880ejn.38.1637329006341; 
 Fri, 19 Nov 2021 05:36:46 -0800 (PST)
Received: from alb3rt0-VirtualBox ([151.22.100.250])
 by smtp.gmail.com with ESMTPSA id w5sm1644883edc.58.2021.11.19.05.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 05:36:45 -0800 (PST)
Date: Fri, 19 Nov 2021 14:36:44 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211119133644.GB2519@alb3rt0-VirtualBox>
References: <20211118202718.GA152832@t470p>
 <YZdGaAVSVM8/4ZB2@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZdGaAVSVM8/4ZB2@kroah.com>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

driver-core$ ./scripts/get_maintainer.pl drivers/staging/vt6655/device.h
Forest Bond <forest@alittletooquiet.net> (odd fixer:STAGING - VIA VT665X DRIVERS)
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM)
Alberto Merciai <alb3rt0.m3rciai@gmail.com> (commit_signer:2/2=100%,authored:2/2=100%,added_lines:2/2=100%,removed_lines:2/2=100%)
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

Regards,
Alberto

On Fri, Nov 19, 2021 at 07:38:32AM +0100, Greg KH wrote:
> On Thu, Nov 18, 2021 at 09:27:18PM +0100, Alberto Merciai wrote:
> > Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
> > Indicator) into linux kernel coding style equivalent
> > variable "current_rssi".
> > 
> > Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
> > ---
> > 
> > v2
> > - correct mailing list
> 
> No, you did not use the correct mailing list.
> 
> What is the output of scripts/get_maintainer.pl on your patch?
> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
