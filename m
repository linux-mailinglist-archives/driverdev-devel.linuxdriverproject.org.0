Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40DF2BFB4D
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 22:54:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CB678700F;
	Sun, 22 Nov 2020 21:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I+zl2iHO+8+U; Sun, 22 Nov 2020 21:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0DA486FBD;
	Sun, 22 Nov 2020 21:54:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6881BF3E6
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7DFCC20005
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 21:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EEGVrOJB06N6 for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 21:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 507D61FEBF
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 21:54:22 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id o21so20600300ejb.3
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 13:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:sender:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=holMzMixu6L4mPkY4KLX0AXrH3B7KLU6Q1+gVZ1hbDo=;
 b=VE9SyktpEDsxZKyhosHCOEROCS5N9bOvyvrjxk48ES9doSJ7BQQaHJQ9cYg9jsmz3K
 qpj6VnAmpgJjNKWXG2w3HeddBATA0i379flZokEuw7ekAYAK7K4aycIQEJ4/CV66r2F9
 ia9LJBemwpR2PjBHtEHLrB5Zm2yyuzaPX6+QLxSotiX6cJy5TjUsMKHgVvcs9OsmBLSF
 g6jQ/1BYPHfRtJMNmVykcYm1tADJ7A5yQrvQ4Ym7sDXkiNyI6b7k+F9W9WlENQtbK/16
 RgghyDvB/4bEl362cMF8x4q0CFn8Me495ukybbhez4P/V/0AxUckJF+GdpzjNgsiMP22
 kICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:sender:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=holMzMixu6L4mPkY4KLX0AXrH3B7KLU6Q1+gVZ1hbDo=;
 b=mfy3B2r52fj/RFCUZdm8jjNQQ4LQS6NwmHQ/UzTPr3qdbgxP/jQI2vcaWx2hcCfHXB
 5uhGtiywXgYJvztrPucgaHjBzDzrHiC1VvNRMLYrDMGsdCgQG1FPV/Sweq9rGpVWP7Cg
 j+0dnaX0kXN06IRCUouLjM8WlAS68rc/Q78c9PFQ5UTPqRgIhMneCXhe0G0VJFcewXn/
 bscWICu6vZ2pYZpyKSc4xPvwNdCvjG5tTyTaEWjnYitxHUdIDXT6Ei1lbV058Y8nS76U
 LX1aa33MPcuQ5RBpxUGkyE/PWpBEM7uIBpGtUSUfn3eegyLP7dBbcl1tDoA0IhnSS+jS
 tbsw==
X-Gm-Message-State: AOAM533yH0dOoTxBXkVjh3QHJzzB7uMlIGE4NQEmkpO3jG1TZ4LkhQjR
 bk/naaW9uP+M4KdnO8xWWtU=
X-Google-Smtp-Source: ABdhPJy7sQ2YBEMqAgg7yhrCbwdD1kN+avSXceXHu86Op69GkJDol8uTq55y0FusJ+SQw/hEkgfq0A==
X-Received: by 2002:a17:907:2076:: with SMTP id
 qp22mr24510111ejb.436.1606082060633; 
 Sun, 22 Nov 2020 13:54:20 -0800 (PST)
Received: from [192.168.43.48] ([197.210.35.67])
 by smtp.gmail.com with ESMTPSA id i19sm3978482ejz.71.2020.11.22.13.54.15
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Sun, 22 Nov 2020 13:54:20 -0800 (PST)
Message-ID: <5fbade0c.1c69fb81.9b3f2.1056@mx.google.com>
From: Adelina Zeuki <anglicaramose@gmail.com>
X-Google-Original-From: "Adelina Zeuki" <  adelinazeuki@gmail.comm >
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello !!
To: Recipients <adelinazeuki@gmail.comm>
Date: Sun, 22 Nov 2020 21:54:08 +0000
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
Reply-To: adelinazeuki@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi dear,

Can i talk with you ?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
