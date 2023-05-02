Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5411B6F48D3
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 May 2023 19:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5AC741C22;
	Tue,  2 May 2023 17:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5AC741C22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wErclWrpe_s; Tue,  2 May 2023 17:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6619D416CE;
	Tue,  2 May 2023 17:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6619D416CE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 307C91BF403
 for <devel@linuxdriverproject.org>; Tue,  2 May 2023 17:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B60A941D87
 for <devel@linuxdriverproject.org>; Tue,  2 May 2023 17:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B60A941D87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QatJi2XNwlih for <devel@linuxdriverproject.org>;
 Tue,  2 May 2023 17:05:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9002F416CE
Received: from mail.httek.vn (mail.httek.vn [123.30.107.92])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9002F416CE
 for <devel@driverdev.osuosl.org>; Tue,  2 May 2023 17:05:48 +0000 (UTC)
Received: from User (unknown [185.225.74.224])
 (Authenticated sender: bantin@khcndongnai.gov.vn)
 by mail.httek.vn (Postfix) with ESMTPA id 4D2AF2EBED1;
 Tue,  2 May 2023 22:38:29 +0700 (+07)
From: "Angel Melissa"<bantin@khcndongnai.gov.vn>
Subject: Hello My Friend,
Date: Tue, 2 May 2023 08:38:48 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-Spam: Yes
Message-Id: <20230502170551.B60A941D87@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=khcndongnai.gov.vn; 
 s=default; t=1683041928;
 h=from:from:reply-to:reply-to:subject:subject:date:date:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YIZa8PC20C/+VY+LBs5hug4wo7h7Cj8XkzJm6fSSPJg=;
 b=vHF3nQINQxvnaLVxQyCtk15MHlejho4gvh1CDsq3xNpTIPVbVR5lYlguCERYJcS8QJbs4M
 kwp7SS8oFy3Jy+nYlZfaBByFrUp3LN56l7rrVCE2ePgANC1OAG6+/+o33zvsiIvgfQtVl6
 RIvr/GGy/9Ka1h2D3998KvRlpCYm0xgq3l5ElugtUBm+Av6Kt2nF5PFpkIMrGZphRKeCDb
 b1tZobRk8HmwkpgqK+l5kpGLm0JV2dV1V4LwwX3Jo3z+HrG6Z5wZq/oW5CzicGChlNZnki
 avEwMyR7rmpjKyLYiqXcj5l/vxTdLHpEDqEAmGFSHpOaWkcGvZCCVRGEjIUyAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=khcndongnai.gov.vn
 header.i=@khcndongnai.gov.vn header.a=rsa-sha256 header.s=default
 header.b=vHF3nQIN
X-Mailman-Original-Authentication-Results: mail.httek.vn;
 auth=pass smtp.auth=bantin@khcndongnai.gov.vn
 smtp.mailfrom=bantin@khcndongnai.gov.vn
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
Reply-To: unitednationteam37@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In consideration of the legislative/legal resolution reached by the World Governing Bodies: The International Monetary Fund, United Nations Organization, World Bank Group, United States Government, British Government and the European Union Commission Committee on Financial and Allied Matters have good news for you contact the email below for more full details,

Email: unitednationteam37@gmail.com
Email: changeissure@usa.com
contact person: Angel Melissa.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
