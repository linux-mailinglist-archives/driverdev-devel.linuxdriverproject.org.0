Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1611640E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 10:56:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F9AF2048C;
	Wed, 19 Feb 2020 09:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QkjvkzeWRRsn; Wed, 19 Feb 2020 09:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D191F2039C;
	Wed, 19 Feb 2020 09:56:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B57B41BF3F9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 09:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1C5B2039C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 09:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vVBgORAxrhEx
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 09:56:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from scm.imp.edu.mx (scm.imp.edu.mx [132.247.16.103])
 by silver.osuosl.org (Postfix) with ESMTPS id C2BE120357
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 09:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by scm.imp.edu.mx (Postfix) with ESMTP id 2B2DF18A175;
 Wed, 19 Feb 2020 03:10:19 -0600 (CST)
X-Virus-Scanned: by SpamTitan at imp.edu.mx
Received: from scm.imp.edu.mx (localhost [127.0.0.1])
 by scm.imp.edu.mx (Postfix) with ESMTP id DE9DF189E99;
 Wed, 19 Feb 2020 03:08:03 -0600 (CST)
Authentication-Results: scm.imp.edu.mx; none
Received: from imp.edu.mx (unknown [10.249.93.105])
 by scm.imp.edu.mx (Postfix) with ESMTP id F26AD189EA8;
 Wed, 19 Feb 2020 03:07:59 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by imp.edu.mx (Postfix) with ESMTP id CD3FB1806263F6;
 Wed, 19 Feb 2020 03:08:00 -0600 (CST)
Received: from imp.edu.mx ([127.0.0.1])
 by localhost (imp.edu.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Rm5Pa7Cwcapn; Wed, 19 Feb 2020 03:08:00 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by imp.edu.mx (Postfix) with ESMTP id AECC718062F216;
 Wed, 19 Feb 2020 03:08:00 -0600 (CST)
X-Virus-Scanned: amavisd-new at imp.edu.mx
Received: from imp.edu.mx ([127.0.0.1])
 by localhost (imp.edu.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xl09nkihDVkc; Wed, 19 Feb 2020 03:08:00 -0600 (CST)
Received: from [45.147.4.119] (unknown [45.147.4.119])
 by imp.edu.mx (Postfix) with ESMTPSA id CC6221806252DE;
 Wed, 19 Feb 2020 03:07:58 -0600 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: 19-02-2020
To: Recipients <mucios@imp.edu.mx>
From: "urs portmann" <mucios@imp.edu.mx>
Date: Wed, 19 Feb 2020 20:07:57 +1100
Message-Id: <20200219090758.CC6221806252DE@imp.edu.mx>
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
Reply-To: onube@qq.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Guten Morgen,
                                          19-02-2020
Wir haben versucht, Sie zu erreichen und haben noch nichts von Ihnen geh=F6=
rt. Haben Sie unsere letzte E-Mail =FCber Ihre S.p.e.n.d.e erhalten? Wenn n=
icht, melden Sie sich bitte bei uns, um weitere Informationen zu erhalten.

Wir warten darauf, von Ihnen zu h=F6ren, sobald Sie diese Nachricht erhalte=
n, die Sie bei der weiteren Vorgehensweise unterst=FCtzt.

Mfg
urs portmann
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
