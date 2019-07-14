Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD91A67FF1
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 17:45:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F83687765;
	Sun, 14 Jul 2019 15:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wCnFvhbuPffR; Sun, 14 Jul 2019 15:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8A1382BFC;
	Sun, 14 Jul 2019 15:45:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62B701BF20D
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 15:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F21F2050B
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 15:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yOVED5zIRnZN for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 15:45:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by silver.osuosl.org (Postfix) with ESMTPS id B8001203C8
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 15:45:45 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id z4so13227553qtc.3
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 08:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=E5z7oN8eXDsJazaisWgOSWc761LOcc1vVCseZvXLOYAnkh44h7hMeVg547CwpwFqtu
 kSuAAHJfEEyvvHBYdrHf8eIfG0Nc8eVpUXfK3UMiyFj0+nbVim8TqGKJmHk0U6Df5Twv
 v4KETET19Dw7i1hkghhdlBgKXT1/8y0QPAoGpD+5QmI326KuEx4uE2FTCCb6tQiWK5vM
 6lhsNq/IipQ5Ipf+x+KwKSx96zvF9xV6iTL4K+NhmL4Y6bNdnjxRETUQ3KIMOkL1dUpM
 7K4CYEqdb9aqVqP51d5P2K4HujIZphdMFb0o9WLnF2DctWeyJ9jJeRy/1448qO7tjOKc
 kuSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=EOtf772y9Ga7JvanDkxtYPeSVC9yQwAnO46X2P2HTq7AVKahbaoSI4PhsVJXeYS9qR
 biRJo1DW4n6EpXHpP++sLZwLp6glplX+QaIMUlSQl8+ozCfharG+WF6tb54rEzH8dog8
 moBwbbTWbIN3qSrxODKM2HKjqh1DrST2ti5xcm348tUgbFDW5+5iCBh39yO0ci3n6fNe
 G94HxkGcaSCmByz5u9JBiNGniUG8Rg5LC3AALtn1msnNCtCok9dCagXGwZVmqUVdqhh0
 elAkAvo8GUPGK0G7U5k7MuCAc71rgisD49V7gezxyOAj4+9dvcmcRFaLwrjpOiyBLArk
 5COg==
X-Gm-Message-State: APjAAAVndlB6FNPxywhTLEjcmhHDFOq0UAS7FgaiseTVV2xgWXi97j3u
 maQP/yekCG0xlITdWlRLLpbTIM6bxc6v
X-Google-Smtp-Source: APXvYqzVUPL7VLBkz9cKAYiAlrBnLY/LGPJtrGG6gLQQ7avpVDwEtWG0VddyEZSMzmAXO/NhhUV4+A==
X-Received: by 2002:ac8:1c4:: with SMTP id b4mr14249229qtg.42.1563119144780;
 Sun, 14 Jul 2019 08:45:44 -0700 (PDT)
Received: from keyur-pc (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.gmail.com with ESMTPSA id d123sm7127907qkb.94.2019.07.14.08.45.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 08:45:44 -0700 (PDT)
Date: Sun, 14 Jul 2019 11:45:41 -0400
From: Keyur Patel <iamkeyur96@gmail.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v4] staging: most: remove redundant print statement when
 kfifo_alloc fails
Message-ID: <20190714154541.GA32464@keyur-pc>
References: <20190714150546.31836-1-iamkeyur96@gmail.com>
 <06fc2495-dda5-61d2-17e8-0c385e02da1e@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06fc2495-dda5-61d2-17e8-0c385e02da1e@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
