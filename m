Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5414E58BE54
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Aug 2022 01:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B75B060BFD;
	Sun,  7 Aug 2022 23:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B75B060BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpGjwVMAc-PZ; Sun,  7 Aug 2022 23:44:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E4DD60BFC;
	Sun,  7 Aug 2022 23:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E4DD60BFC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 106BC1BF2B6
 for <devel@linuxdriverproject.org>; Sun,  7 Aug 2022 23:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF0CA60BFD
 for <devel@linuxdriverproject.org>; Sun,  7 Aug 2022 23:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF0CA60BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wVIqdsQAmGUw for <devel@linuxdriverproject.org>;
 Sun,  7 Aug 2022 23:44:19 +0000 (UTC)
X-Greylist: delayed 00:23:58 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7715060BFC
Received: from server.vanthuong.com.vn (server.vanthuong.com.vn
 [113.161.109.197])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7715060BFC
 for <devel@driverdev.osuosl.org>; Sun,  7 Aug 2022 23:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server.vanthuong.com.vn (Postfix) with ESMTP id 06673F22872F;
 Mon,  8 Aug 2022 06:15:40 +0700 (+07)
Received: from server.vanthuong.com.vn ([127.0.0.1])
 by localhost (server.vanthuong.com.vn [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 5gNROJjHdNkN; Mon,  8 Aug 2022 06:15:39 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by server.vanthuong.com.vn (Postfix) with ESMTP id 6FD3EF22871A;
 Mon,  8 Aug 2022 06:15:39 +0700 (+07)
DKIM-Filter: OpenDKIM Filter v2.10.3 server.vanthuong.com.vn 6FD3EF22871A
X-Virus-Scanned: amavisd-new at vanthuong.com.vn
Received: from server.vanthuong.com.vn ([127.0.0.1])
 by localhost (server.vanthuong.com.vn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id R8qbt_L0s_wS; Mon,  8 Aug 2022 06:15:39 +0700 (+07)
Received: from ip-172-18-0-1.eu-central-1.compute.internal (unknown
 [192.168.157.1])
 by server.vanthuong.com.vn (Postfix) with ESMTPSA id 506D8F228720;
 Mon,  8 Aug 2022 06:15:34 +0700 (+07)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?HUMANIT=C3=84RES_GESCHENK?=
To: Recipients <test@vanthuong.com.vn>
From: "Scott Godfrey" <test@vanthuong.com.vn>
Date: Sun, 07 Aug 2022 23:15:28 +0000
Message-Id: <20220807231534.506D8F228720@server.vanthuong.com.vn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanthuong.com.vn; 
 s=E324E7B2-B7EA-11EB-951A-B8BD79E31B86; t=1659914139;
 bh=ejCnrtvELazsu0KWe0awb21qDaNP+enZnDqxEdSuOdE=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=qKl7tbie39VtTaclBq3DP3lA3pv4yl0wnYxd6xec5FFpo5xLwd4IEnyc2M98dyiU8
 Myvd2rB739WjHnI4aqKvBakHlwCprx1mmGywdD2zFWBJi5Y7PR/a4tYsXA6ZaO47Zf
 MtLy7tU9myy7I7YQQZGGx7qLwRvbkCGMPwXfZx6SlbdxxA4T+QL2bNVn+PRpbg+mQy
 FaI+xNZjpSEowa9YCknfLJ5k6mB0PN2ofTTM/AfFY37wJhMzm141VklwECxsvJEyxE
 ge7kn9dQPOJoiU7ECikaMgGDR18PyvqBTD+PzrwICiLxYDm99tkZMtoIRql9gPwUJz
 ke3wT0/fiwjOA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=vanthuong.com.vn header.i=@vanthuong.com.vn
 header.a=rsa-sha256 header.s=E324E7B2-B7EA-11EB-951A-B8BD79E31B86
 header.b=qKl7tbie
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
Reply-To: scottgodfrey7788@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IHR E-MAIL-KONTO HAT EINE SPENDE VON $3.500.000,00 GEWONNEN. KONTAKTIEREN S=
IE F=DCR WEITERE INFORMATIONEN WIE SIE IHRE SPENDE ERHALTEN K=D6NNEN, HERZL=
ICHEN GL=DCCKWUNSCH AN SIE.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
