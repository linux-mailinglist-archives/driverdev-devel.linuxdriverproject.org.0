Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 724CE4AF11
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 02:38:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D7D785C4C;
	Wed, 19 Jun 2019 00:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Himf4W04SArn; Wed, 19 Jun 2019 00:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3F0385BE4;
	Wed, 19 Jun 2019 00:38:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BFD51BF2B0
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9838B20500
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19ZgJKmXQiSL for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:38:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E6D59204FB
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 00:38:01 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id v11so8592556pgl.5
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=agM/b/1RXAjKiubWTAZW6LuccQyVOpmmqDojN/lnWHE=;
 b=WKAkZRSHI/AYhiwsXzthvjH70oaW1GrtTg9KwScp9VvvHfezdwUwCfHZ3yqN0t7prL
 C/Py1NdsppCl/rcHWzyYMO8zs2RCObT4NGgo6iC5XJ2KmpJ5hqjTOdSFZ3n7vw1UW1B4
 MUaUclRzueAjOudiXzD5JHNzjhoxZYhzEQQ48voP8/4cEvoy7PwboB/ZkkcQXumJN1qa
 EUfid+NhIJ1/01j4fZJvd34HOur9tovNhwBUEdtnMLp9P3izEkd4us74wSKjCQ0ta1MP
 qnY2JIDaafCD9liBFTBJ3QFP1QzoHVl+nh2Q2VoACynOHOEBAv+1mCH206toANQySwxt
 FKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=agM/b/1RXAjKiubWTAZW6LuccQyVOpmmqDojN/lnWHE=;
 b=cP9DbSJuOkiU/YdAVxWaHEe7uHs4bDFGFOIw2oS9KtldPxWnbgqRH/uBw1tS+6lIWC
 31waWot7NtGerDNksGLxyMaOWU8Q77n8LEiyka2Pw+xmXqyaasZauhh2j++rVRyyRwdZ
 m0rUlyUPzUFxBZTN8BXOrjqrJnsr2N8On3ZTcDtbJ95Fs3T1NimJ54eD0K9qVSOC3Xs1
 mT970XIKqbl5JHCNLQvu/fTodad2TQTA3DHGq3zPpf9d80Mi6u2R0nyGRXNsqu5lUj7G
 J62vNOo3K2M9P3ju6dXYgPQppgWXiTy7/cx0lX7m0xM9dS7uYZ4d9hj21Pkx6fuyPPwu
 zOkA==
X-Gm-Message-State: APjAAAWnyTJhj+RmBoSUCOTZkGu7nl+Q6o0BMNm+6sn5SIZhSoUMQ6L5
 h8GEANPNa9eQcN5BvFWTAQo=
X-Google-Smtp-Source: APXvYqwco0n5stGzjoAENRb7ii/UzIYN4bk44cmg5+NkYLemziHhT4Bc78SnhsI3lcZ5mJhko1s8aA==
X-Received: by 2002:a17:90a:2567:: with SMTP id
 j94mr8108665pje.121.1560904681349; 
 Tue, 18 Jun 2019 17:38:01 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id x26sm14217860pfq.69.2019.06.18.17.37.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 17:38:00 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 0/3] Resolve if/else brace-style errors
Date: Tue, 18 Jun 2019 17:37:31 -0700
Message-Id: <cover.1560903975.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20190618070019.GA20601@kroah.com>
References: <20190618070019.GA20601@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Joe Perches <joe@perches.com>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset fixes the following errors reported by checkpatch in the 
staging/rtl8723bs driver.

Patch[1/3]: Fix check patch error "that open brace { should be on the 
previous line"

Patch[2/3]: Fix the error else should follow close brace '}' 

Patch[3/3]: Fix Indentation Error

The patch should be applied in the sequence of 1-3. 
Each patch performs one clean up operation.

version 4 changes:
	- Moved comments to a new line
	- Removed an extra blank line

version 3 changes:
	- Converted the patch to a patchset
	- Resolve checkpatch errors:
		else should follow  close brace '}'
		Fixed Indentation Error to use tabs
	- Compiles and builds, untested on real hardware.
	
version 2 changes:
	- Removed Trailing whitespace introduced in the previous patch
        - Moved comments to a new line in the else statement

Shobhit Kukreti (3):
  staging: rtl8723bs: Resolve checkpatch error "that open brace { should
    be on the previous line" in the rtl8723 driver
  staging: rtl8723bs: Resolve the checkpatch error: else should follow
    close brace '}'
  staging: rtl8723bs: Fix Indentation Error: code indent should use tabs
    where possible

 drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 18 ++---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c     | 89 ++++++++---------------
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c       |  6 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c      | 54 ++++++--------
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 24 ++----
 5 files changed, 69 insertions(+), 122 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
