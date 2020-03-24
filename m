Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 804C91905DD
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 07:46:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23AD286008;
	Tue, 24 Mar 2020 06:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZvXqp7UaG7t; Tue, 24 Mar 2020 06:46:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E917686169;
	Tue, 24 Mar 2020 06:46:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0C701BF35E
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 06:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D5F3087880
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 06:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ui+FOvUfANyC for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 06:46:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6C638776A
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 06:46:03 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 22so10565685otf.0
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 23:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2eW4tMn4FX+hsT8yqdVtaTKyglVePfRfLH2Gh1mT3r0=;
 b=Jst754ZEMPZZKo/tfiTpAjUUo9LUB9h1ZhqMTl6mYb05VxiWnWNBp+bjrJOzyvQCH1
 +oKGskgAXtUyatIITVG6JzzFZQSwh15z9Uid1fjPChwcLpLSsbtoBCB9IqurQtGu+VZ9
 5PSH45pTwE5R3lpqpzVtCRbCX2svlW/JY47tOtOW/TWmuJ3P9JgEo+n6ZCurvbQViAR0
 GZ1yWkyRPajjrUQ6L1oTJFzXg5qXm31Rx9SmFLf3q2o/bSmHhLosd1ozy0pr6kaJJ+di
 aV5t4WPe0uU1ljZjXdMF2FSsPTcgmIpXOHeqa+10DJKVkO/cOkAYRTiPnEUbheisoEHk
 9CfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2eW4tMn4FX+hsT8yqdVtaTKyglVePfRfLH2Gh1mT3r0=;
 b=tgFv+jp8aHzkycQQ4DHL+67PouCTKL5U63hRWin8xr5NEecuf2Esov3E1eu7O5NCxJ
 9/KdchmYfEH+2D/EcXBkU/YFG3xyuplU2LerBCBYGthwDnMwrJmK2cjrOMp8NH1TbnNt
 6epSgHiDMe1NBiSLz6rNnP3MkuLFa32YPr15PczcQPDMM1ChzfQHYeuTPUaXDQ4mXUfb
 WQtIZ9UuQxXIDfPJkKpWFAXxI8fw+9mkSSf+QX0TMXwET9EiJZqxXYjXMydJ8msBsR2f
 KizHXsEu5YJrN/Rz/bJDNjbcFKqQr1qH1wZQelupulA4WkoaFoaTGOh2TSp6LNg3hgO3
 iizg==
X-Gm-Message-State: ANhLgQ1Aoo00+MYsFsj8CiZKSFR7hYV55u6CX25Xb/ODTdQ6uh/LLo/G
 6MH8bQ3Z7loicl9zJTVYnbs=
X-Google-Smtp-Source: ADFU+vvqZeYBZxXRd+XZTQYuQf7BCwkmcUoV939/28bSCLZHwGMZYqjEBecKjSiVhfEMx01PMTwoyQ==
X-Received: by 2002:a9d:7488:: with SMTP id t8mr1139265otk.219.1585032362970; 
 Mon, 23 Mar 2020 23:46:02 -0700 (PDT)
Received: from localhost.localdomain ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id x1sm2910134ota.7.2020.03.23.23.46.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 23:46:02 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] staging: vt6656: change function from always returning 0
 to void
Date: Mon, 23 Mar 2020 23:45:43 -0700
Message-Id: <20200324064545.1832227-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change vnt_radio_power_on from always returning 0 to void.

The first patch in this series was originally submitted as a 
standalone patch. Greg Kroah-Hartman <gregkh@linuxfoundation.org> 
suggested more changes to be made into a patchset.

John B. Wyatt IV (2):
  staging: vt6656: remove unneeded variable: ret
  staging: vt6656: change unused int return value to void

 drivers/staging/vt6656/card.c     | 9 ++-------
 drivers/staging/vt6656/card.h     | 2 +-
 drivers/staging/vt6656/main_usb.c | 4 +---
 3 files changed, 4 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
