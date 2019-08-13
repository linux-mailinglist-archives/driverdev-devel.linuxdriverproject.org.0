Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 068398B053
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 08:58:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52A9286F92;
	Tue, 13 Aug 2019 06:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4PDFlor7bxW; Tue, 13 Aug 2019 06:58:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FE7B86E4E;
	Tue, 13 Aug 2019 06:58:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7181BF479
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 06:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A9AE86E4E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 06:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUNCdKPlvcm2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 06:58:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D56BF86E3F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 06:58:18 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p3so447381pgb.9
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 23:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Oy8w87OGqyy3aD6mb+8tT7RQ6tXYMvbwQYBp8RpjanU=;
 b=ajlpxTBLtoRLtH8NYh1AH+bOxjAGnC1L4mK8NNAY9UkblagKN6g/Q6R04FjMPsdfZb
 m6TXI0FK0msjA+hpEx4eAkH2Bz/ma4X4V0LYvtl1+IzZqWkV8v0GZtN6Jo8cFxdOYl8v
 Vqp94zO403iRsn0Ud6/RFL577esJexZnGRggG60zeUTHwKZue18u9jGEZtbZnyJ5Lfll
 qHte40+hD3rte9Kbi7iSOaQJN0JvqBQYL93Ll/ju207zqEqgioVJ+gfGoqGY4OygZaX3
 qFKf12f3EKts61iZk8Rz+e6dKE/Pwi6UcPaErzc7HfNF/PnHlD81nf9GwHN7QdATD0Ap
 eCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Oy8w87OGqyy3aD6mb+8tT7RQ6tXYMvbwQYBp8RpjanU=;
 b=Po3/mRgEGcKi+NarHviUYMND2ToIs5fO2l9vrqgN3DDsgGSzMZCuyCRLqMX4nKi0yr
 mcud1D+zJUnKHjGgPJVE7wnqgNeiU4Twdk/WIMJNSLKzyq6P06qOByKEfAPRLRpZ6Cs+
 mBkNCHx2MvDqX0yxJf/Z3ZbzlvjYvdVXcdqeOdL9EQnPvRZyExap5InFHzUqOjQvaa8q
 GoNX/vh5bmcTqdCsDEbNyUWZmbXOD6cV0kYRLHkD0mstmAeLwgQT8GBWWs8ZFBoUEygW
 0RcEp2KDgvxF8UvozV4neZrJafJ4DjHvjC/vlLB4LrxOHGRCnf1uxpCxXrP975DLnWut
 0KRg==
X-Gm-Message-State: APjAAAWnDCUGQkDTDCodjfjs8ZjGe9FO3hKpOUUlhYOc3tCcQoW0RWoT
 8C73tO6Rty3E84XkkA1KJ88=
X-Google-Smtp-Source: APXvYqwX3hJN/niX2uSddRF4jZ1fgQnswtrsDV/+SQyTZvkyXMMmOCWRYcqwLf2lI4T4Wtj0Vz26+g==
X-Received: by 2002:a17:90a:d151:: with SMTP id
 t17mr863113pjw.60.1565679498231; 
 Mon, 12 Aug 2019 23:58:18 -0700 (PDT)
Received: from IoT-COE ([2401:4900:275a:ff77:44c:6b0e:447:1c5c])
 by smtp.gmail.com with ESMTPSA id ev3sm1127153pjb.3.2019.08.12.23.58.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 23:58:17 -0700 (PDT)
Date: Tue, 13 Aug 2019 12:28:06 +0530
From: Merwin Trever Ferrao <merwintf@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH] Staging: rtl8712: rtl8712_recv: fixed 80 character length
 warning
Message-ID: <20190813065806.GA23606@IoT-COE>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: merwintf@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When the checkpatch.pl script was run, it showed lines with length
more than 80 characters in rtl8712_recv.c file. Fixed by
breaking it up into two lines within 80 characters.

Signed-off-by: Merwin Trever Ferrao <merwintf@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 42cb2c95b40c..9901815604f4 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -35,7 +35,8 @@ static u8 rfc1042_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00};
 
 static void recv_tasklet(void *priv);
 
-void r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
+void r8712_init_recv_priv(struct recv_priv *precvpriv,
+			  struct _adapter *padapter)
 {
 	int i;
 	struct recv_buf *precvbuf;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
