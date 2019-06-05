Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF92354DB
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8066686C11;
	Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IysmLXcbP4i9; Wed,  5 Jun 2019 01:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC14886092;
	Wed,  5 Jun 2019 01:10:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 455791BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4031B86BE0
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2OrW3Jcm4Ef for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 98BA986092
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:05 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id l3so16181023qtj.5
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AHgsRDD1+z+6q19pHneXAjqZEoVFV7+iEPXXwTFoSwE=;
 b=DncVZ5oMJZ/Uwq+Bq4S3U/4k+Arlj4Qd76UGokSeAPFh0b6mj0G2gyCW+xayJfzN4J
 hpWKMhzbQnaVyg9Fzd23k3oLrVFUt5M1g7PBde2ndSzJ14goiG6LUPmxN84cAb7jh7X0
 meyKmPLujNT6qZLSPs0nF1KBaki/7gPcm1xDB5r93g7gXDp6Q9n+wzeuzuoSpQvbQ/rk
 zIfjddlOul9VxSLPUICHgpOvmWg1NUal0OSyaSd/XeE0a/dAcRYd8ahD5w+rs10jlGbl
 H29Hdqw+VyRgwTr2ZVkr9/9omzuADeHXCMtrQySQN6y7l3ACqMtCK/2StntyyB3+AEE+
 fohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AHgsRDD1+z+6q19pHneXAjqZEoVFV7+iEPXXwTFoSwE=;
 b=m7zIFabebKNlE1y6PbO10Fc5rhO2CSsbj9QKnRqLC32BseTEeDMHsNCWGcOf3IlVRI
 lUktKsyMVjwM4BATjnW89hdoGleWhsy3c0ij5jpkzKUVrLDiXb3DDwirwjDUbsaMi60x
 xWx0K4RPAohrLL18+rbi32mxns8DJjOFa8qQGAtdu9nmJn0wpDkXeKcjgjK29W6ZfWsX
 vjtkD1k9iAGFvcIE0w+WMk4L7vEUpCFhRGzu+Ab5Uu3bDp6dhnrW+Soa/c30KhcLa3Tu
 h+b2sTIuFXLWIudsAgtv9k0GUfO9kwWH9UGNqh8wJYNpXhDTlz8dpD5+g9osucztMoZ+
 5uFQ==
X-Gm-Message-State: APjAAAVVs+xLuoVkNY3qC0bRm2mQ8T2QWPxNOmTKINyPgMZ6tsmtE8Tq
 jeoszx60dwEmc8HuY1pdsJY=
X-Google-Smtp-Source: APXvYqx/56AMU552StH8BKRt+dZNUrjJveYZG2J8uctiMGQhqjMdIN9H9Q8GOw8kv+HEBLYcOGTUuw==
X-Received: by 2002:a0c:d4b4:: with SMTP id u49mr1783502qvh.202.1559697004703; 
 Tue, 04 Jun 2019 18:10:04 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:03 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/6] staging: kpc2000: kpc_spi: Assorted minor fixups
Date: Wed,  5 Jun 2019 01:09:07 +0000
Message-Id: <cover.1559696611.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Primarily just a bunch of unused / unnecessarily used struct member
cleanup patches with the exception of one patch which removes an
unnecessary cast to a (void *) in a couple of functions.

Geordan Neukum (6):
  staging: kpc2000: kpc_spi: remove unnecessary struct member phys
  staging: kpc2000: kpc_spi: remove unnecessary struct member pin_dir
  staging: kpc2000: kpc_spi: remove unnecessary struct member word_len
  staging: kpc2000: kpc_spi: remove unnecessary struct member
    chip_select
  staging: kpc2000: kpc_spi: remove unnecessary ulong repr of i/o addr
  staging: kpc2000: kpc_spi: remove unnecessary cast in
    [read|write]_reg()

 drivers/staging/kpc2000/kpc2000_spi.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
