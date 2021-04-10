Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8326B35AB24
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Apr 2021 07:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BAAD60792;
	Sat, 10 Apr 2021 05:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WmGwTJ9fGJAb; Sat, 10 Apr 2021 05:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FB4A606BF;
	Sat, 10 Apr 2021 05:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6771BF5B5
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 05:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 180E140002
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 05:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N13IuzbMhrFU for <devel@linuxdriverproject.org>;
 Sat, 10 Apr 2021 05:51:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E94240202
 for <devel@driverdev.osuosl.org>; Sat, 10 Apr 2021 05:51:07 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id x7so7542726wrw.10
 for <devel@driverdev.osuosl.org>; Fri, 09 Apr 2021 22:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YLgnpTDzqgZbTH7wvh2LZzvbn10dMFxSc3peI6dJFkE=;
 b=a+7Ki6wF0FvA3lPmHZs642eVYROpgvNG8HS/bWDY+d04pfyz0fEzXB4lOGOpf/lL6b
 5WbHPgjXKkHvsCkKAY/O6pndBedbVKmg0KzBziP54pwXslNI4emiQDlM8mXuLtROccqK
 oGxkd1ml9LjaBxyi/ood/+L7W7c0hZbvY99KGYdTfAc3BhRbLIatP4sPZyL1BB3Cr7QY
 LXZB0Lc3IQ957/Gzo7G120+zPyjApDGJrOtyDOAYFx12daJgcCPBDC04C8EMPSsGa1fm
 sYSmPjvEI9CLKEewPgZV+/3Y7VeJPzs88o2eqYUm1lm8oCuQMWU7ukSOLLYrQ4YY5lqj
 Acew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YLgnpTDzqgZbTH7wvh2LZzvbn10dMFxSc3peI6dJFkE=;
 b=p53vWNkzWWN3XS5redfwHCV8unbpB6D6PyrWE4rwZZ0iKXWJuXy9INjyuRS9XePdPU
 sNj8K8Ls5bpRRuxNo8eY+P954mhMZRRRC9ROtIi+LokkLsJbpK3QO8EpsNUNBCUACcGm
 p2tpJEY+xTM84/WHGndTDL2N1EOnUVJqaZN3z6LyO5zgpKMybCytlTSpQJALQWX3W+KN
 fmufGW8h+Idq1L/Rz+RDDIo517fu8/y9cWKwIoiVkT9DrGNmILeAASGUcAomvErRSrhg
 N8GIK4rrcQC3dDPo+mNtBIVKGUNMESblNI7euUBIQylF93i+xle0xQ9ujkEnG8aazZPV
 eU9A==
X-Gm-Message-State: AOAM533+2jtXsLsbGx3WxTiG4PavnLF614GRE9ZG9cJBEranYKci6Zaj
 i/llkH5JTtNXMgq3iXVRs+4=
X-Google-Smtp-Source: ABdhPJwX43C1QI+A7YcF/1UW239rOdz1jJtlk+DT7GxdlBAbcDoDLs/yRAJKJXn6T6pjudkjEKnT2A==
X-Received: by 2002:adf:fcca:: with SMTP id f10mr11954580wrs.148.1618033866338; 
 Fri, 09 Apr 2021 22:51:06 -0700 (PDT)
Received: from localhost.localdomain
 (225.red-83-57-119.dynamicip.rima-tde.net. [83.57.119.225])
 by smtp.gmail.com with ESMTPSA id o2sm6376518wmc.23.2021.04.09.22.51.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Apr 2021 22:51:06 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v13 4/4] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Sat, 10 Apr 2021 07:50:59 +0200
Message-Id: <20210410055059.13518-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
References: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 clock driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4d68184d3f76..02986055fdbc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11484,6 +11484,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
+F:	drivers/clk/ralink/clk-mt7621.c
+
 MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
