Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60195FBFC
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2024 23:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 935D880E31;
	Mon, 26 Aug 2024 21:46:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qeK4riTvzY2N; Mon, 26 Aug 2024 21:46:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8FFC80F34
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8FFC80F34;
	Mon, 26 Aug 2024 21:46:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65D761BF331;
 Mon, 26 Aug 2024 21:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C3C9400EB;
 Mon, 26 Aug 2024 21:46:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A3sz9u_dL4em; Mon, 26 Aug 2024 21:46:56 +0000 (UTC)
X-Greylist: delayed 4264 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 26 Aug 2024 21:46:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1EC5A400E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EC5A400E0
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=45.117.79.99;
 helo=mail.freightek.com; envelope-from=admin@gtel.vn; receiver=<UNKNOWN> 
Received: from mail.freightek.com (mx.freightek.com [45.117.79.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EC5A400E0
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2024 21:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.freightek.com (Postfix) with ESMTP id 434B611ABF53;
 Mon, 26 Aug 2024 15:45:17 -0400 (EDT)
Received: from mail.freightek.com ([127.0.0.1])
 by localhost (mail.freightek.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id jQw82ZqV5Fyi; Mon, 26 Aug 2024 15:45:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.freightek.com (Postfix) with ESMTP id 15AA411ABF4E;
 Mon, 26 Aug 2024 15:45:17 -0400 (EDT)
X-Virus-Scanned: amavisd-new at freightek.com
Received: from mail.freightek.com ([127.0.0.1])
 by localhost (mail.freightek.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id tGoJPFhto_MX; Mon, 26 Aug 2024 15:45:16 -0400 (EDT)
Received: from [194.169.175.139] (unknown [194.169.175.139])
 by mail.freightek.com (Postfix) with ESMTPSA id CF0DA11ABF53;
 Mon, 26 Aug 2024 15:45:11 -0400 (EDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Funding-Relief-
To: Recipients <admin@gtel.vn>
From: USAID Donation Funds <admin@gtel.vn>
Date: Mon, 26 Aug 2024 12:45:05 -0700
Message-Id: <20240826194511.CF0DA11ABF53@mail.freightek.com>
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=fail (p=quarantine dis=none)
 header.from=gtel.vn
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
Reply-To: management@getusm.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,
           =

Please be informed that you have been selected for a Grant of Two Million U=
S Dollars from The United States Agency for International Development.
           =

Funds will be release within the next 24 hours.
Reply for more details with your full names and telephone number.
           =

Yours Sincerely,
Safrata Karel
+1(252)777-0673
E: relief@uidsm.com
=A92024 USAID
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
