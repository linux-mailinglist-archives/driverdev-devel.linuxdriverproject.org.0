Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCB9ACF18
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 15:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42593870A1;
	Sun,  8 Sep 2019 13:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rdw3l4Cw8RMn; Sun,  8 Sep 2019 13:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3035F86FAF;
	Sun,  8 Sep 2019 13:49:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AC0C1BF40F
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:48:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2777484C2A
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vpAf9AkKAB1m for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 13:48:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 83A7E84C23
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 13:48:38 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id r26so22810004ioh.8
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 06:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oFn65Gx0LceV9UpwBpRBxIJy0Sy+f8hyn5shhbHZwGY=;
 b=fZ1C77cALrVsEVNsgCc8SoP1kDV2VcjQckKG2yXKeZxbSTAOiSGATXDS0TkMDpYooW
 C6PjdLTYnZh0qPgKG647RSGa6U7/tDP9IhwUopPKNatbWgGl2hT5QuhSxDsh+FcrBHfJ
 dKipTfEorZhVcxWmdwmFFw5AzqTPUXdawvg+8ga81oOcH58ZxnXBmWQPrkeEn91pKJS7
 YhI3Sid3dpmiVXz8p1RNqkcpqxGoVVffGuko9jAm9UrA2h2vq3/RsEmN9LXIaRlI/isv
 pFb6DLQL9HK0z90Z1P+dkquY8wAa/RcIrv4CNwS3Q8nLoGUunkM9eibAy/789iBaDANr
 JHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oFn65Gx0LceV9UpwBpRBxIJy0Sy+f8hyn5shhbHZwGY=;
 b=S4N1+3oaWuK5ekx1zkFS/7I4ChUD3b/yckups4xBK11IBE58m6+NMUDbRcvrG/8XXS
 Tp7t4x7ygumwqHlUnTW0eu66HlT28IMrYgrqkQaUHXqDiTvcbfNC6IGOleKjmhpZr79B
 OKJPkA9Pxn9L2CFGh6mxfNh3HbkfTWJzVNhD7Ya/u/zNnHi4YEfqnWUkK/4K2+rvycts
 NcNGCU79NDPqVSEfnCspwCapRMqatqYR+c96ORct+V5RbLv4HW3I4FLAsjp0EP9csxUR
 qQYaWcskY1L5y6b6LES1fNRgZF9V+jdmzxQIzrvUSA/HBY88Xbli11dR/dai6vKXcdUs
 gMhA==
X-Gm-Message-State: APjAAAX/P5KcHEwTDQGBBZ2DJFRnorR1tv8xUOgczIkPHkVos8rxXA+S
 pyEiKfd21qHJqjTQKOYK2NU=
X-Google-Smtp-Source: APXvYqymoIbipF+QFyqKIvFQS+3h+eR47zlB0UY9E1dU6IsNMCa2eT2KiNA0h+tsaaSp48HbhI0HUQ==
X-Received: by 2002:a5d:9746:: with SMTP id c6mr15520437ioo.235.1567950517595; 
 Sun, 08 Sep 2019 06:48:37 -0700 (PDT)
Received: from localhost.localdomain ([198.52.185.227])
 by smtp.gmail.com with ESMTPSA id k11sm2813251ioa.20.2019.09.08.06.48.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 06:48:37 -0700 (PDT)
From: thesven73@gmail.com
X-Google-Original-From: TheSven73@gmail.com
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: anybus-controller: move to staging/ tree
Date: Sun,  8 Sep 2019 09:48:05 -0400
Message-Id: <20190908134805.30957-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, Sven Van Asbroeck <TheSven73@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Sven Van Asbroeck <TheSven73@gmail.com>

The devicetree bindings for anybus-controller were mistakenly
merged into the main Linux tree. Its driver resides in
staging/, so the bindings belong in staging/ too.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Fixes: 20a980e957bf ("dt-bindings: anybus-controller: document devicetree binding")
Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 .../devicetree/bindings/fieldbus/arcx,anybus-controller.txt       | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {Documentation => drivers/staging/fieldbus/Documentation}/devicetree/bindings/fieldbus/arcx,anybus-controller.txt (100%)

diff --git a/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt b/drivers/staging/fieldbus/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt
similarity index 100%
rename from Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt
rename to drivers/staging/fieldbus/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
