Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9F3480539
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Dec 2021 00:07:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3A2D60A80;
	Mon, 27 Dec 2021 23:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qgVVeqjg83X; Mon, 27 Dec 2021 23:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3747060782;
	Mon, 27 Dec 2021 23:07:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5737A1BF2B1
 for <devel@linuxdriverproject.org>; Mon, 27 Dec 2021 23:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4038C40205
 for <devel@linuxdriverproject.org>; Mon, 27 Dec 2021 23:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJ0On8vk5SUc for <devel@linuxdriverproject.org>;
 Mon, 27 Dec 2021 23:06:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f100.google.com (mail-wm1-f100.google.com
 [209.85.128.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8069D40203
 for <devel@linuxdriverproject.org>; Mon, 27 Dec 2021 23:06:54 +0000 (UTC)
Received: by mail-wm1-f100.google.com with SMTP id
 v10-20020a05600c214a00b00345e59928eeso5196757wml.0
 for <devel@linuxdriverproject.org>; Mon, 27 Dec 2021 15:06:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:content-description:subject:to:from:date
 :reply-to;
 bh=TPPWK3AEJz2BpcFnhUaAzlB0mKAMI/i0SVxqCOEE3R0=;
 b=cRjIolVzyKp7YHNrbE3iw+QnJIH74E9LaVFdKy9S8o3SK+ITP2pGJUigbPMzW+c16r
 53Ly2wik+0dDRyTfOpUmI6zHm53V3UjOser6CN7a6VJm5bNDVhZaOn4uuterIuerY5X8
 Ygjb513AeDhbxzcwKyasOW4b8vb95BQTQvClCfUPy7EcgEq7YLK1xIFIw0wDWKYg+Vtk
 hr6hpX4Y8D+osf4ObaDOFCZW4Nr2zAjkvnP0Hzj+ANsepePiN/kTR7tV2h1vhebHi1Ss
 tE/pDsazXAMosi78r2LEqWnNKtU4/EuuZtm0tYpwaaa6eDRquh6WTJHHOI6Ekzr/10y2
 UffA==
X-Gm-Message-State: AOAM530TiDWPsoseJcruSPMP0JUT+gV9oqGU7fC7aP8dUCt5GH1eosTV
 eQvz//aja9kgYNtlB+4v9AzbnM14OE7HhPD+ffYQtUBizfjjiQ==
X-Google-Smtp-Source: ABdhPJy9kne2JwRyddKf2I7DZGgFyxA6ATa5n45BGFLrdy9s2ziqnbSB9aDPfOAITposD3sf9oDmYPm6VuPN
X-Received: by 2002:a05:600c:1e12:: with SMTP id
 ay18mr14689532wmb.14.1640646412620; 
 Mon, 27 Dec 2021 15:06:52 -0800 (PST)
Received: from [192.168.0.104] ([164.160.92.240])
 by smtp-relay.gmail.com with ESMTPS id h81sm739643wmh.21.2021.12.27.15.06.43
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 27 Dec 2021 15:06:52 -0800 (PST)
X-Relaying-Domain: rewalopiste.com
Message-ID: <61ca470c.1c69fb81.1ef21.42e7SMTPIN_ADDED_MISSING@mx.google.com>
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Business proposal
To: Recipients <suzaira@smartglove.com.my>
From: "Mrs Amina Medjahed" <suzaira@smartglove.com.my>
Date: Mon, 27 Dec 2021 15:06:33 -0800
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
Reply-To: AMedgolfbnk@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day,
Please i have a business proposal that will benefit both of us. Please respond if you are interested.
Thanks and God bless.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
