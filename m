Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0831696B4
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 09:04:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8869A20474;
	Sun, 23 Feb 2020 08:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OujU1szdSNzm; Sun, 23 Feb 2020 08:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6144420373;
	Sun, 23 Feb 2020 08:04:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 741061BF383
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 08:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7128C203C8
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 08:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8vhNBGUXZOJt for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 08:04:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 24E2420369
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 08:04:50 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 01N84mNW006358
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 03:04:48 -0500
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 01N84hPk020656
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 03:04:48 -0500
Received: by mail-qv1-f72.google.com with SMTP id g6so4816790qvp.0
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 00:04:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:date:message-id;
 bh=1sDjklUSRS6YK2uiHcNctH5JVvBEzpdZpp/YBerFW8Q=;
 b=RU4M2ruXyugxzkwyX7rLxzdYV5Ohoe+vNaEpsGTmEb0S2bL+WhnPJYaXuGlvOOc9i+
 gxoxFV/dvaEKc/V15I4Nn2W6rdGBjnY2ZS+sStjnFyLadHEFzAFmSK4BcGlDIvH5C7rg
 +dR7uzCsK+aFvOcv6Gg0P6/KzBjVAMybSoqBCmVJgpfEJKHEMHRJQvf7py04hlKl/VnQ
 x2MsCF39qc+n35XUjWJonLHqNGDR3jOud7nt2A/68HFC/bYOkndjUOQlxvdCKJR1SCC2
 FctTPmCI72yiJ5pBd6T2rUiLfUWrGhITQSxHh5LaK4K1fa9Xp0qjWLqC1rJqznMMoOFJ
 zSaA==
X-Gm-Message-State: APjAAAVC5PAIb9iSkDOEkPRw1IATaexyfarf0sders28KCTKVxSgddyz
 01PkuhjBB8n5pC+g9Qc3hvELpGr/GSTPNzbG/z1V4lR3Hc3w0c8PTybda5FGR4Vp44APfHrG/TW
 x3d5UJr1P5xPqFmLJIB8/uT+yU4BUoVFB
X-Received: by 2002:ac8:4616:: with SMTP id p22mr42368495qtn.368.1582445083516; 
 Sun, 23 Feb 2020 00:04:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqwLhVoWW2qQBKGujy+A80rCyV25rTP6B3Jur8sdum1qXflE5F1qwSnbKA4SgT1R0Q+CM8Rjsw==
X-Received: by 2002:ac8:4616:: with SMTP id p22mr42368472qtn.368.1582445083208; 
 Sun, 23 Feb 2020 00:04:43 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id w2sm4302117qtd.97.2020.02.23.00.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 00:04:41 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [RFC PATCH] staging: exfat: remove symlink feature.
In-reply-to: <20200219055727.12867-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200219055727.12867-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Mime-Version: 1.0
Date: Sun, 23 Feb 2020 03:04:40 -0500
Message-ID: <225183.1582445080@turing-police>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 19 Feb 2020 14:57:27 +0900, Tetsuhiro Kohada said:
> Remove symlink feature completely.
>
> Becouse
> -Uses reserved areas(defined in the Microsoft exfat specification), causing future incompatibilities.
> -Not described in Microsoft exfat specifications or SD standards.
> -For REMOVABLE media, causes incompatibility with other implementations.
> -Not supported by other major exfat drivers.
> -Not implemented symlink feature in linux FAT/VFAT.
>
> Remove this feature completely because of serious media compatibility issues.
> (Can't enable even with CONFIG)
>
> If you have any questions about this patch, please let me know.
>
> Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>

Symlink support would be nice, but Tetsuhiro is right - this driver's
implementation isn't the way to do it. Heaving it over the side and getting a
standard fat/vfat/exfat extension done is the right way.

Acked-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
