Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C715DB653A
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 15:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92F43864F4;
	Wed, 18 Sep 2019 13:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmiVWI5jkwk9; Wed, 18 Sep 2019 13:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9143386186;
	Wed, 18 Sep 2019 13:58:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80B5D1BF30D
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 13:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7885D86214
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 13:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxbHFtVS1NAk for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 13:58:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D13CA81AE8
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 13:58:42 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id f19so3234046plr.3
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4YtTr5ldtXaLexBZUuNa7G/axRFlb4yESM5arnj3+4s=;
 b=A+2KXiPVWbu3fYQxVv0tPXQoFCCp5A0YQR0OsBtYBiThXal4OkuLjBqXBvpF4ujpS9
 hezgLzPSuDlZGNAagg5ySr2wfS72Rmw5EBHTQ+SSF5+obQoU5ogx5E9xI438flw00nJa
 Ivw1l7Ne7Ndr2+MZ04nvZRPgx6PpA7k9zyPQ7F4a5TFLVFS3033cuVCgHd+uSKM07iN7
 yD8RAzj/xA3rIoi0SChJdYn4FWuqERdOWgS4jA7x58QtB3RJvi/qHPGj+zplJz50Heyd
 wBXGTuUCglB28cRe8nEc3JW3iugXMUFL7LKU+J1vUtPtaH3gdlpntnKE+PMYyeJDHvcM
 9lSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4YtTr5ldtXaLexBZUuNa7G/axRFlb4yESM5arnj3+4s=;
 b=sD+eSD27hzXSvIg0kUwBfVHOdb3ecY7ioybtRFgSI5KWnuC9J5Wkz5BgOmAPUNBR8s
 7lwHgnmMycIZbYO1eCA2bXlCKrJzByJunHvk3LLiyEhKrp7f0ZQY4ikfDgcBAvRXc3gW
 y+DKvVSYUY3kqFoPcuIGSWeguLO3IZowHWnlo7Hc9/cdHevD3kXstfodgD666xTcqEyC
 CqpmCsZohNpkWtnhHcRHO76b5jJs+55FDG5Oi0plcy3uTkvB9smQH31sUqfClIcvvFfd
 +6UaDYxMs2GYl+d4z1fECsF4GZBDisorYX04JnWiHLkA8W1fjqqjXI1NGCkrR0xPh3sI
 mD1g==
X-Gm-Message-State: APjAAAXjV9roJINn+yJYtyojpG3gi2/iYqag/OYc3dDKLv3aWSYtITWB
 TrNooFVveOF/tjMcluZ9VwNbfdMvW8v6Yw==
X-Google-Smtp-Source: APXvYqwuao6q/Iq4+nO2bwHRBBduAMqsBC6DlZ+1RyFRylUQh8snEjD0B8wwkEtoPDhMqPh7GCl7gg==
X-Received: by 2002:a17:902:6e17:: with SMTP id
 u23mr4298634plk.205.1568815122415; 
 Wed, 18 Sep 2019 06:58:42 -0700 (PDT)
Received: from localhost.localdomain ([2409:4062:87:7bed:5d92:5243:ac2d:ef16])
 by smtp.gmail.com with ESMTPSA id
 c125sm6594769pfa.107.2019.09.18.06.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 06:58:41 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] staging: rtl8192u: Fix checkpatch warnings in
Date: Wed, 18 Sep 2019 19:27:41 +0530
Message-Id: <cover.1568814125.git.sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series fixes several checkpatch.pl warnings in r8192U_core.c
related to unwanted blank lines, line-breaks, and alignment issues.

Sumera Priyadarsini (3):
  staging: rtl8192u: Remove unnecessary blank lines
  staging: rtl8192u: Fix alignment to match open parenthesis
  staging: rtl8192u: Remove unnecessary line-breaks in function
    signatures

 drivers/staging/rtl8192u/r8192U_core.c | 108 ++++---------------------
 1 file changed, 16 insertions(+), 92 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
