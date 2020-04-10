Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2051A45AA
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 13:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9BBA86C39;
	Fri, 10 Apr 2020 11:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjTWMqwbOrTT; Fri, 10 Apr 2020 11:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3A8484F2B;
	Fri, 10 Apr 2020 11:29:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 398071BF2FB
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 11:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 35B712107F
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 11:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8ROLBHUxeel for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 11:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by silver.osuosl.org (Postfix) with ESMTPS id B6D1520532
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 11:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586518145;
 bh=KbQ7MPUE2YWxLVrSNpDqZD3CJFhUoxbEHNi7PhcLaU8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=WaLlXroguEeX5vqEZF4wvHf3JPKiJUpXzCFL4a1WEzQIqEeIePoQWYSWWPo52ws5P
 DyNolIyD1oORSPOlVQ4kUoc3wfNU2jvmTAsTLoD936Sb//B1h68vJirfghCAOLfWkI
 Te9aLwKOtossjv+O2p6I3oNAUo581Knfiwz7efF8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MYeMj-1jjdw33Kwl-00Vcuh; Fri, 10 Apr 2020 13:29:05 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: vt6656: Refactor the vnt_get_phy_field function
Date: Fri, 10 Apr 2020 13:28:32 +0200
Message-Id: <20200410112834.17490-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:b+EMgwckRiVQ1Vd8pSMIrXcnbE3ZWzweCVRszrEMKT7dLf/SSui
 1tOBlRAVsLgxAbVjonJKn2ENZpv5SyJ/uRYMmnKlvynVVoq/8jGabI+CGurs6AN3S+/VWFO
 XbZ620WW0CLPVH2gsrRGtnnPdaYs4cbf7tOCwQVz1sYuTI2luxOJdmZ+AguJiLOjZdWURLb
 5BUG+zAhwOongyV6KYqJA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:pEhguabj12U=:a+yZvb6Xt/hcyn60TYLhoU
 y+2cU/xqP+mQEMdCd3cSf5PMNKPiCrFSvMkM8b5Y8FMfjgT7czovElEs0ChM7y+qCeOvcEXVL
 svfuIdzGnNQ1/1rdwRalqztcXohPuKBUQnxcwUxstwlim5b0kh4KHYUpIvRAqfOyNzkMcr7Lf
 AIuxePzQSd9XmNXLGX8S3im6R1d+lNX/OBPbIfR2wEmgx/PyKSEsrFQs+FJp29HUiW0+afAmq
 cPjaaCE21G07JoIIDHJBD1ddFgnvZbKZJUrQA47HJlrwT6Z1Lqo8Xd+tUvi5kPcUMnXV6FUio
 dRPAwwLv9jYPAYA43PZzy4ZsDzJ0GuUrxTGGUubUxsPDrs3kNEiCyhzHrB5O3CwMJHGC43RUG
 91gDrxi0dSQka+V8daqnsZgiI89w8gP7jQlSN+WzJ5hIzMBNsvgMY1DJn7ow1LL2iYmCrUW1y
 +XQddpKx91wr3amHY8OsvX13DVLBqQ3Z4acIzms7koU3tCxYWqDb6VYWk6D2xRMf92XU33v8W
 +nFTXsdEgj6Zp8lgWoSDottQaGpXY4H3ekXxYF70R6Zo0wXsUiJe/cfVmZQ2zdpAg/SjpXYM8
 eg/qPzdizHMeev4w7CQs1E/XrxCVp/uU57dKc0DZcXsXYaVYqaKrrcnVfFAZZCwGp1hQTywJ9
 BgR5UpLjcAVcpycNRoB1DxHtDtOzHYBtZo1PTVeGrFxpbxmAvsYBSRdCs6HE0zM5djT2TIw4u
 piSn8r1apQjPGA2WDozjcvlKQgp50bNa++PksiYVDAdl6gQBjWPTa+h+gE+TQYut3rI7e9950
 AjDtWigqt08QvDUtkjwZ8d6wMxWbP3N1TMC0cqqe5AleY92NS+fCijTWC3HXO7R6PKP4iREoy
 Nl788lB4A5Vdwfz7ZN7ZXBAPftQtTKy6zw9LT26p5v5vrRHUSX8+SKi0ja+jWaB0guzsClfuE
 XFynU8E1EDopfUA4iVHCSLoWAXfVErGRQEvf4Jxu4fxy8MG4IcA6TNP8TRhJVN/2fLj1269OW
 WkF6z3rcXHxOUmKGpmXYWGBTnXKwPP4FKSfA9nF5goD9CRP3+gk46Ib5mkDs0c4TSBFQfgyLp
 3+FJqaNBF/COVfxLwcP42TmMLAZK8KfX8i6johsl0qp6HZ0CZ5C8Y7qZzD5IxswuhYw0JwgbE
 s5PFnqxb+hgkjxL3rNlWafMWz1N4Fs/kiplKrtwfL20ahzrfT6s+KmGBID5cd+IP3F80YGhFo
 uNk7Pc9ZK29VRtCwh
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series makes a refactor of the vnt_get_phy_field function
through two patches.

The first one refactors the assignment of the "phy->signal" variable
using a constant array with the correct values for every rate.

The second patch removes duplicate code for the assignment of the
"phy->service" variable by putting it outside the if-else statement due
to it's the same for the two branches.

Oscar Carter (2):
  staging: vt6656: Refactor the assignment of the phy->signal variable
  staging: vt6656: Remove duplicate code for the phy->service assignment

 drivers/staging/vt6656/baseband.c | 104 +++++++-----------------------
 1 file changed, 22 insertions(+), 82 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
