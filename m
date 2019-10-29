Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E722E8B3D
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 15:55:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4BA7859C1;
	Tue, 29 Oct 2019 14:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ky2FMTSjZxRu; Tue, 29 Oct 2019 14:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38EE985888;
	Tue, 29 Oct 2019 14:55:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 134901BF59F
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 104F48738B
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 14:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 009GibFOuolp for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 14:55:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 76CCB86FB0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 14:55:29 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id l3so10080061qtp.2
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 07:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/vP/tPXtiesV5kB5mEzKaZW6NBZ7crh1MzX1nomOw+s=;
 b=dc6iR0wLBze6KXkgj/ttZaCRQWairyeIVKneMK0++6eThqhImkw6LTWltEeYiWefmM
 PRUg2vohcd21Dcn/nP35r/GWn3Pkwp0o4sj2lsqt4UWiyBrm+NsaBqy+oj2MYfiTcNxS
 FhEqZcJpLHks2cWHRZ5DrjDSP4WzVLfC9FJeU133fKH8/7htnhHe4N0Rxey++O9fFwjb
 tinQxNnUA+kjUD1lvh9XvFkcI1ZQV74GUVjE3YTyZTTrYHiZZi/jTz37VODUVxpO+zP0
 nZ1e/z2+hkjdjVAeFRU0VPrefIGuLJEBE9EvilcSfegq42CwIWgSl6lyuaX1kpl51cLW
 5D8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/vP/tPXtiesV5kB5mEzKaZW6NBZ7crh1MzX1nomOw+s=;
 b=l/fNXhN+qvLGJvaOd65irM6iwQNWfnqqvZ/v/EPUdsJsFCk/zSlT617AAYhSYZT34E
 xHbSyJhNyam542H8z57YV83MW5BEy6iNutkjxTzlgEhM22nkJCsB4Vic6brB/BNLMMSY
 KVpxvAaDY7oKqCzPAtzFy7ALCIq9vXmF0GtRoVGUjPqSxJXMJvrqAPZx1Bt6riz4FP/u
 LFAygm0ctu0PiY0yKkBSkPAlfjFHMTXZjE6yyCkiLwPiPqA35RQ33wdapZ1Jq5HiWuy4
 RLKalVqoVFNbe7GX7qdMdQqgR4EuF3hdRADpGLpCefAdeuYcmcDHy7E8yiQoFXjiY51l
 YZHA==
X-Gm-Message-State: APjAAAXmEcBVx0T8BfgLde39a30qvaZncQcWFXzGqrWkR6rdJbAUffDv
 jFzYsv88jQvgB+ojctmGwdU=
X-Google-Smtp-Source: APXvYqwctWUt8xYvZl6De/kwpDHvZ0zUEyzj05DBuI+K1Z93X9QlatHxKTVgEroCOq6d5kRXKm4V1A==
X-Received: by 2002:a05:6214:70f:: with SMTP id
 b15mr22976629qvz.97.1572360928363; 
 Tue, 29 Oct 2019 07:55:28 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
 by smtp.gmail.com with ESMTPSA id
 g17sm5978069qte.89.2019.10.29.07.55.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 07:55:27 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v2 0/3] staging: rts5208: Eliminate the use of Camel Case
Date: Tue, 29 Oct 2019 11:55:14 -0300
Message-Id: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in tree rts5208

Gabriela Bittencourt (3):
  staging: rts5208: Eliminate the use of Camel Case in files ms
  staging: rts5208: Eliminate the use of Camel Case in files xd
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
