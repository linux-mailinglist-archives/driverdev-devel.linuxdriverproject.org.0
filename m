Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0094B339F89
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:36:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B7124EA47;
	Sat, 13 Mar 2021 17:36:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n169-MUG6Bwb; Sat, 13 Mar 2021 17:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 398314DD86;
	Sat, 13 Mar 2021 17:36:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE191BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C10F60605
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2330QkjWn3aE for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:36:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46EB1605D9
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:36:04 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id x4so43759062lfu.7
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bTGIO2mprCYwdnK8VASqjR4nuPQTvhHXZL3mqO5S2Qs=;
 b=WPSUyLjd2cRji4VdXLq7zPMBuRrw+FMaONXRZ4Ia4cTUdJ1hJ0q5pVouCH8byF36sx
 DhhERQ/rQDI7nElwDf1g9sOoPIxd2O2VfBixQlds/xMKKKFfe6ZKFT4vhsbXDf2mJRnL
 iDimMUG7+ebXkmKkXSxMNE8ppEMYSEeuaTrJVe4TccPKXO8v5SHbOfKuWoROhg6aIOrU
 L8amATLWLteDAoS5z2qoOqfg886QMVi3+HkDYDrYiF4sG5tJjVF9NGBlzg3sVjXVyNHU
 H0PyqjyFEp11+hznYDFwhJn03ZfwQwFjFbHLMbcJsn07QZscV6SnuF65a3bB4RAaikpt
 nM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bTGIO2mprCYwdnK8VASqjR4nuPQTvhHXZL3mqO5S2Qs=;
 b=a94a6kxn5wATBomg7O7/MdkFIVObEz/oFpSJDfpg3c6kJpeYvct6ybLMPX+Mqrt4uT
 lZEC4jRpQVMlG7ADqeDEuTWAUoQukwoMF69zRNGIiFnKY+I5YP9Vd/AIohXIpjOQ+gP6
 +9875jNJPmNl0plktzAKfFmFJM8JH4O052jnsQ0aoLB53c+lA1YhqqoPlOfP1szepC4G
 Et1SNn9exy4gNP9oDAowzMi6FrQjPR8NolJl2chWpc3/7d+Hhf4VtioxEFgIquNXkhi4
 MUUwAexNWVuBR0ri2NBqaCPJOuNw8uoSAXJ7QMlsF/S7N/XPZtFgfhi2Bpis1wYMpU8r
 il8g==
X-Gm-Message-State: AOAM532L/Lc6ehdfg/d/PiYzvREe1rIHDoCwE7ZY/8AvuQTkW37ZsGpP
 yCOpEUYYx25u8R19psJ3VJ7Xrn1Q0FE=
X-Google-Smtp-Source: ABdhPJzr7c6W7VVZ1I0brHcfW3t6VJVN2hRzds3bG+Ac//hnzpZWVpBmhsBbglssa6rKc/vDV0E7sg==
X-Received: by 2002:a19:c20e:: with SMTP id l14mr2885759lfc.402.1615656962013; 
 Sat, 13 Mar 2021 09:36:02 -0800 (PST)
Received: from localhost.localdomain
 (2a02-a456-df9f-1-f9b2-7163-4c2e-174.fixed6.kpn.net.
 [2a02:a456:df9f:1:f9b2:7163:4c2e:174])
 by smtp.gmail.com with ESMTPSA id g9sm2085065lfc.258.2021.03.13.09.36.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Mar 2021 09:36:01 -0800 (PST)
From: Gabriele Modena <gabriele.modena@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 0/3] staging: wimax: fix style check warnings
Date: Sat, 13 Mar 2021 18:35:29 +0100
Message-Id: <cover.1615652628.git.gabriele.modena@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210305195508.3543-1-gabriele.modena@gmail.com>
References: <20210305195508.3543-1-gabriele.modena@gmail.com>
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
Cc: Gabriele Modena <gabriele.modena@gmail.com>, trivial@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Fix style warnings reported by checkpatch.pl on op-rfkill.c
by moving */ on a separate line in a block comment,
adding a missing blank line after declarations,
and reformatting a quoted string split across lines.

Resubmitting so that each style warning is addressed in a separate
commit.

This patch is both an attempt to address the warnings, as well as 
a way for me to familiarise with the linux kernel contribution 
process, by following tasks proposed by a popular online challenge.



Gabriele Modena (3):
  staging: wimax: fix block comment style check in op-rfkill.c
  staging: wimax: add a blank line after declaration in op-rfkill.c
  staging: wimax: fix quoted string split across lines in op-rfkill.c

 drivers/staging/wimax/op-rfkill.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
