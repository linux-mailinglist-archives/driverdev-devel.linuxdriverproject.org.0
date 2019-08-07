Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BFC83A52
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:33:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A439187E38;
	Tue,  6 Aug 2019 20:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvtkhT2WFkRX; Tue,  6 Aug 2019 20:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 666E887D8B;
	Tue,  6 Aug 2019 20:33:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 971EF1BF375
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A0D687E34
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Sx-REolhkZu for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F75987D8B
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 20:33:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d1so9373760pgp.4
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 13:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F/hl3E6xWSgLOYfC8vQfPuiPfVoRw6t9KqdsSlnrZOY=;
 b=Z5R+Ui20vWbz3pMtD8McxT1ePXqXSB0K/nOqoMdMCmQ54UG2cbXg0U2lg3pA41ZebR
 AWP4t0iEnQHvj+V/sU2PxHCB1JkqD5nBObV4zaJ3p9exwVBeu/4LLhKjE0eRA0/ESoYx
 Lg92tiFsdOBVW2vzv1I6MWUgnwHvo1EAHa+Te0ARTKC4tIYigDDYm84NOJGx+dnaW+BD
 GK306WLqw5xIU3JkrCmpkC7bS0Fn/AKMmrmteRAIJ4h9dE18XoppYipulUZhCqWalbGh
 PDe0mETwoudiO+wQO9BtTKFmZavBvyd33Oec6Gpllw0x3VqMgFQCmJ58noLJUWaynmjY
 9UCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F/hl3E6xWSgLOYfC8vQfPuiPfVoRw6t9KqdsSlnrZOY=;
 b=qsB9RwbAbHWbT+OQUfCJ0mZpl063vJdqhsDvZtiya51RWbUdKjh69nYV6QFkSpt203
 hQY6ncp7/KhL2cteodyYrcGulxT4L0/Ej1A5/WmTP0pCxssZnzP/RNSdB1MDEuTOb6hB
 aOn2fYqFVY6bJDz1ff/5zm4YQ/WHhL2cidFfdEe2x/7hL8uXUpmhAsAQPWkbk37qivIj
 VB/xhrbEHpL6Le1bXX2PiJQsz4MEPuZ09a+XGvkIIE9q+Ejv2CKagz+Z7yxOkdW8vV3a
 4lomiKMDkaFVyP0JTDYWANK4vYt+xhA6oeGYt84IYA/D748gPm6t33bmRb0wITgwaU+P
 fHwg==
X-Gm-Message-State: APjAAAVtZfoyppw6Dh13oadN24UKI4wxweKPFyVI7tBDbX4ixhBamoIY
 sRgen0NS7PbbVA/LsWCcQcc=
X-Google-Smtp-Source: APXvYqydVmi8Htm7y9SQXaN5mFjwL7oDna3ZTCjzJMqqWRRTTBYIPYefxSK8iUvA8rJh0bYbcIpRcg==
X-Received: by 2002:a17:90a:fa18:: with SMTP id
 cm24mr4837085pjb.120.1565123609378; 
 Tue, 06 Aug 2019 13:33:29 -0700 (PDT)
Received: from localhost.localdomain ([27.7.7.163])
 by smtp.gmail.com with ESMTPSA id x9sm62823174pgp.75.2019.08.06.13.33.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 13:33:28 -0700 (PDT)
From: Giridhar Prasath R <cristianoprasath@gmail.com>
To: isdn@linux-pingi.de
Subject: [PATCH] staging: isdn: hysdn_procconf_init() remove parantheses from
 return value
Date: Wed,  7 Aug 2019 07:33:31 +0530
Message-Id: <20190807020331.19729-1-cristianoprasath@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, cristianoprasath@gmail.com,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ERROR: return is not a function, parentheses are not required
FILE: git/kernels/staging/drivers/staging/isdn/hysdn/hysdn_procconf.c:385
+       return (0);

Signed-off-by: Giridhar Prasath R <cristianoprasath@gmail.com>
---
 drivers/staging/isdn/hysdn/hysdn_procconf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/isdn/hysdn/hysdn_procconf.c b/drivers/staging/isdn/hysdn/hysdn_procconf.c
index 73079213ec94..48afd9f5316e 100644
--- a/drivers/staging/isdn/hysdn/hysdn_procconf.c
+++ b/drivers/staging/isdn/hysdn/hysdn_procconf.c
@@ -382,7 +382,7 @@ hysdn_procconf_init(void)
 	}
 
 	printk(KERN_NOTICE "HYSDN: procfs initialised\n");
-	return (0);
+	return 0;
 }				/* hysdn_procconf_init */
 
 /*************************************************************************************/
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
