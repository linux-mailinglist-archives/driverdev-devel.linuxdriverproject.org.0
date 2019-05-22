Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D43B2638B
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:14:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79EFE87D89;
	Wed, 22 May 2019 12:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLiuT81OfqXO; Wed, 22 May 2019 12:14:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 09781856B8;
	Wed, 22 May 2019 12:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 877ED1BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8427285F34
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bqxnF3nebh7F for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 051D885F31
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:42 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id y42so1975938qtk.6
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rmXHajl5kyPy81dUiGVwne11QESr1+8af/1NAUcnXEs=;
 b=Szks1tnIvPQLCzlNN86MfKrk12QyqIYMwHvWTyXPe7wa9LKHjGEeZlX9u3c+pDWYX8
 mERsNyrNjrd7+YYhCZ+SeRpsbPBUZve38tJopVkFhpmYm/Yn+sRT7Xf8z+dolB745a29
 /R2xKS2xkGjcVQvnkBZ+SWtRgIriQwCrV8bfMaMuMWyHGHBBlLU6JvxlMKYTyqwCGP20
 wMeszgXUDbvZoWJ17iigeACdyWX5EcBgd0pdaV/x/QodcjnIZFjDvxMA+3V6/9btzQB5
 FJLn4QvT+QL9bsUXzFiakgkqOYM3WCWqS7Cs9Q1zC5NBG1fNtXhSVgVdbS2c16zMQIO+
 j7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rmXHajl5kyPy81dUiGVwne11QESr1+8af/1NAUcnXEs=;
 b=MNFSr8ZP58NHrT/0nXiB30O/uQyshgZICby1LB3/z0k6y+CqTtq4Fb0kUsMHpqXiDf
 E/D+0Vj4c7u9XoLoFm9zJZ9L/snQ8GQtwOiZpGUDMaIR0lP3XblAXF0nrTvTErvL2N3b
 ICcYNoZ9MDwOCz4RYqXyLSBD9T7KP2rdL6W+SIqZnaRpg75Euyf7wUSXEtQ4DAYHHvnG
 uRXog3mAkn15qc6xh9PrzVUJaL7P78oZzbHAK7lCbdh7gIleX/pgxCCQVO3c6oXvL/Rd
 ZSlsFy7EYEVCiW20c5ticUJH0cXSI6gr1bWf9HDSHXysQwTaLZhOWG3jbv+el7fOHVAT
 U1VA==
X-Gm-Message-State: APjAAAW8SdcICsjqyudw/3/eSh79icef0j65jFqcYmRB39zmd5PzmRM4
 6bqz44Td5p9I7CSR4eyBKpE=
X-Google-Smtp-Source: APXvYqxicc8K/VIjD86mIRCSYHAAG19cDsAP0ppLOuRI3drCUry/zAV9SS1QgyLJKCb/nXMMe3TwhQ==
X-Received: by 2002:ac8:fa3:: with SMTP id b32mr71040633qtk.89.1558527281195; 
 Wed, 22 May 2019 05:14:41 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:40 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] Minor updates to kpc_i2c driver and kpc2000 core
Date: Wed, 22 May 2019 12:13:56 +0000
Message-Id: <cover.1558526487.git.gneukum1@gmail.com>
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
Cc: Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attached are an assortment of minor updates to the kpc_i2c driver as
well as a build fix for all of those who will need the KPC2000 core.

Thanks,
Geordan

Geordan Neukum (6):
  staging: kpc2000: make kconfig symbol 'KPC2000' select dependencies
  staging: kpc2000: kpc_i2c: remove unused module param disable_features
  staging: kpc2000: kpc_i2c: newline fixups to meet linux style guide
  staging: kpc2000: kpc_i2c: use <linux/io.h> instead of <asm/io.h>
  staging: kpc2000: kpc_i2c: Remove unnecessary function tracing prints
  staging: kpc2000: kpc_i2c: add static qual to local symbols in
    kpc_i2c.c

 drivers/staging/kpc2000/Kconfig       |   2 +
 drivers/staging/kpc2000/kpc2000_i2c.c | 118 +++++++-------------------
 2 files changed, 34 insertions(+), 86 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
