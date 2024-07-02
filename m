Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F90924AFC
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2024 00:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 353F660720;
	Tue,  2 Jul 2024 22:00:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2j8CQ_1b5KXB; Tue,  2 Jul 2024 22:00:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72C726072D
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72C726072D;
	Tue,  2 Jul 2024 22:00:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B92F1BF303
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2024 22:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8BA5405C2
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2024 22:00:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8MSSeILuQrhI for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2024 22:00:33 +0000 (UTC)
X-Greylist: delayed 12251 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 02 Jul 2024 22:00:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 05EF540465
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05EF540465
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.183.107.242;
 helo=elkomail.ru; envelope-from=bernardarnault438@gmail.com;
 receiver=<UNKNOWN> 
Received: from elkomail.ru (unknown [62.183.107.242])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05EF540465
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2024 22:00:32 +0000 (UTC)
Received: from gmail.com (unknown [111.90.159.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by elkomail.ru (Postfix) with ESMTPSA id 65D36120EC10
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2024 20:19:35 +0400 (+04)
From: Arnault Bernard < bernardarnault438@gmail.com >
To: devel@driverdev.osuosl.org
Subject: =?UTF-8?B?TXIuIEJlcm7DpHJkIGjDpHMgZMO2bsOkdGVkIDMuNSwwMDAsMDAwVVNEIHTDtiB5w7Z1IGbDtnIgdGhlIHB1cnDDtnNlIMO2ZiBjaMOkcml0eS4ga2luZGx5IHJlc3DDtm5kIHTDtg==?=
 bernardarnault438@gmail.com =?UTF-8?B?ZsO2ciBtw7ZyZSBpbmbDtnJtw6R0aW9uLg==?=
Date: 03 Jul 2024 00:18:37 +0800
Message-ID: <20240703001837.002055102335D379@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=gmail.com
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
Reply-To: bernardarnault438@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
