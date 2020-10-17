Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE255291234
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 16:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E396E20512;
	Sat, 17 Oct 2020 14:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hS8jytdHd3iO; Sat, 17 Oct 2020 14:10:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CFF4204E1;
	Sat, 17 Oct 2020 14:10:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 882ED1BF35A
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 822F8881D0
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eTopxgMwOjzk for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 14:10:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC9E6881CC
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 14:10:31 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e2so8402922wme.1
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 07:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UE3RLlL10pqYyRi2N3aJLlwbDv7Ywr80F64lqhdTvA8=;
 b=Dh2Wmho6xmOYI1wHokhWW1N/0ytjKp0InhWJX2rmXhP4dnjGTu57lqt5dHEJSIPE9+
 /F7eyz85fs0aFMHGJGXyPhhqMTVTHE63HPE7ktlLMYlTrCLYnf321ydxoNyWUX/JKUVg
 dbKi8wSTmkw085CZz+hktqRwvlSlFemVfcIdQ0zhgDFhb+oIR7afzbc0HfjxQkH65xYF
 /eECbuCJgtZqC1RjSI8K94aj6dDPfT+x+jUgx+ykLVyfKiOncmVp6PZAV0KWzrKiviGd
 aGT2kyMGRoKLz9LPXBSreCAQZPPmVoUFfOBOq0tjXweu1vZcz5ZlA3TSoTYz6WWtftS+
 q0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UE3RLlL10pqYyRi2N3aJLlwbDv7Ywr80F64lqhdTvA8=;
 b=fW8Q2NrmF0RmA4oo9DDkDkKNAHeSwF3u43Ks00SbroRqNfTTiAUa6JnMcbP2bbVka9
 s6eAOXCrlhYdF+yF6BJlPMZBxUTU+k0Y1AH9opB86flArJ8+n7gKrbSvAfKEHeXTeQMN
 BQY2YCe2aZWeN4JXDFRNmNGvehA7WfRxWP8c02r0hBTSekKLdvEBPl3rtvJYuBBW75tA
 Tw7s0fH5EBqhA0eHCEUzpyjFYqJDPXxE01LMSCCp6GTcaPqnfsq0JpX7PPX/Cc3qRJY5
 6wEVfT2q4gjq/NYFbe8PPMLOts5Kjtmt0cDMOXhDdK3ipBLS5H6kbbDYJ/FHaM9+DqOc
 A0rw==
X-Gm-Message-State: AOAM531tytOgkm9JRJQBPyTaLwZkO/insWPtdzbIRK2colh1A+C7u2g2
 nDw8LSXbEjSVYXknH0ag/H0=
X-Google-Smtp-Source: ABdhPJym6zkmCOL7hTCK8kj6JtKjwdSJKnKyDLmkBCtLQaBMLNGi2QRCoIRsNCQaeggxUT0Q3xuzGA==
X-Received: by 2002:a1c:3cd7:: with SMTP id j206mr8681778wma.55.1602943830292; 
 Sat, 17 Oct 2020 07:10:30 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id i33sm9130623wri.79.2020.10.17.07.10.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Oct 2020 07:10:29 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH 0/3] Fixes and cleanups for atomisp
Date: Sat, 17 Oct 2020 15:09:42 +0100
Message-Id: <20201017140950.15989-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 Alex Dewar <alex.dewar90@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

I'm reposting this series [1] as, following the merge window, it now
cleanly applies to both Linus' tree and to linux-next. I've made a minor
fix to patch #1 (see patch for details) but the other two patches have
just been rebased.

Best,
Alex

[1] See https://lore.kernel.org/lkml/20200921215359.45003-1-alex.dewar90@gmail.com/


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
