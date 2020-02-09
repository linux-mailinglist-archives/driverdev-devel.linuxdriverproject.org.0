Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19334156991
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 08:50:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86D8685F6A;
	Sun,  9 Feb 2020 07:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yuzlBP6aS9V; Sun,  9 Feb 2020 07:50:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAF5B856E9;
	Sun,  9 Feb 2020 07:50:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 145B81BF47E
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 07:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10E4482441
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 07:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STSRc1Zu3juk for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 07:50:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail02.vodafone.es (mail02.vodafone.es [217.130.24.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C1A0F85C90
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 07:50:38 +0000 (UTC)
IronPort-SDR: TdZURUeigyehz90CrZqnpwCTJxh4JrpfB/NI9PcN8o5RWU+VS4LzfPFBR5MebnF1KvQfMvx2i9
 CjzlNhuXKnUw==
IronPort-PHdr: =?us-ascii?q?9a23=3ACOcGxRV7QONwO+6iW7H+VwNpxg/V8LGtZVwlr6?=
 =?us-ascii?q?E/grcLSJyIuqrYbBaOt8tkgFKBZ4jH8fUM07OQ7/m8HzFQqs/Z7jhCKMUKC0?=
 =?us-ascii?q?Zez51O3kQJO42sMQXDNvnkbig3ToxpdWRO2DWFC3VTA9v0fFbIo3e/vnY4Ex?=
 =?us-ascii?q?T7MhdpdKyuQtaBx8u42Pqv9JLNfg5GmCSyYa9oLBWxsA7dqtQajZFtJ6osxR?=
 =?us-ascii?q?bFuHtFdudZyW91OV6engv36sOs8JJ+6ShdtO8t+sBaXanmY6g0SKFTASg7PW?=
 =?us-ascii?q?wy+MDlrwTIQxGV5nsbXGUWkx5IDBbA4RrnQJr/sTb0u/Rk1iWCMsL4Ub47WT?=
 =?us-ascii?q?K576d2UxDokzsINyQ48G7MlMN9ir9QrQ+7qBx+x47UZ5yVNOZ7c6jAc94WWX?=
 =?us-ascii?q?ZNU8BMXCFHH4iybZYAD/AZMOhWr4f9vUUAoxijCwajGOzhxSRFhmP00KImz+?=
 =?us-ascii?q?gtDR3K0BImEtkTsHrUttL1NKIKXO6v0qbI0SvMb+lL0jj974jIdB8hquyLUL?=
 =?us-ascii?q?Job8XR1VcgFxnLj1WXr4zlMCiY2f8Ks2eG9eVhVOWvi2g5pA1rvjevwcIsh5?=
 =?us-ascii?q?DPi4kIyV7E7T10zJgoKdC6UkJ3fNCpHIdKuy2EOIZ6WM0vTmFutS0n0LMJo4?=
 =?us-ascii?q?S7czIPyJk/wh7fbOGIfJaQ7xL4UeaRPS94hHV4eLKjnxqy8Vavyun7VsSs1V?=
 =?us-ascii?q?ZFtCtFkt3Wtn8T0xzf9seKRuFj/kemxDmAzQ7T6uZCIU8qj6bUNYUhzqYxlp?=
 =?us-ascii?q?oVr0vDAjf7lFvrgKKUbEko5+al5/j9brn4qZKQLYF5hwHmPqQrgMO/AOA4Mg?=
 =?us-ascii?q?YUX2ic/OSxzKXj8lPlQLpUlP03nK7ZsJbVJckAvaG5BBJa3Zwi6ha4CTepzs?=
 =?us-ascii?q?4UkmUALFJAYB6HlZTmO0nSIPDkCveym0mjnyl1x//YOr3sGYjCLmLCkLf/Y7?=
 =?us-ascii?q?l98VNTxxQtzdxF4JJUEawBIPXoWk/1rtDYCQU5MwPni9rgXdlwyI4acW6VA7?=
 =?us-ascii?q?GUKq/frxmP/f8oOO3KY5Ua6wzwM/w02/m7tXIllEVVQq6v0tNDcH2kE+55JE?=
 =?us-ascii?q?OWYWHmidcCOWgPtws6CuftjQvRfyRUYiOKUr4x/HkED4SpRdPbS5ygmqOG2i?=
 =?us-ascii?q?iTFJpab3JBDF3KGnDtIdbXE8wQYT6fd5cy2gcPUqKsHtcs?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FJbQALuT9eeiMYgtlmHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7AgGBPQKBVlINExKMZIZwgU0fg0OLaIEAgzOGCBOBZw0BAQEBARsaAgE?=
 =?us-ascii?q?BhECCRiQ8Ag0CAw0BAQUBAQEBAQUEAQECEAEBCwsLBCuFSkIBDAGBayKDcCA?=
 =?us-ascii?q?POUpMAQ4BhiIBATOlNYkBDQ0ChR6CVwQKgQiBGyOBNgIBAYwhGoFBP4EjIYI?=
 =?us-ascii?q?rCAGCAYJ/ARIBboJIglkEjVASIYk/mDCCRAR4lWuCOAEPiBGENQOCWA+BC4M?=
 =?us-ascii?q?dgwiBZ4RSgX6fWIQSV4Egc3EzGiOCHYEgTxgNnGICQIEXEAJPhDuGNoIyAQE?=
X-IPAS-Result: =?us-ascii?q?A2FJbQALuT9eeiMYgtlmHQEBAQkBEQUFAYF7AgGBPQKBV?=
 =?us-ascii?q?lINExKMZIZwgU0fg0OLaIEAgzOGCBOBZw0BAQEBARsaAgEBhECCRiQ8Ag0CA?=
 =?us-ascii?q?w0BAQUBAQEBAQUEAQECEAEBCwsLBCuFSkIBDAGBayKDcCAPOUpMAQ4BhiIBA?=
 =?us-ascii?q?TOlNYkBDQ0ChR6CVwQKgQiBGyOBNgIBAYwhGoFBP4EjIYIrCAGCAYJ/ARIBb?=
 =?us-ascii?q?oJIglkEjVASIYk/mDCCRAR4lWuCOAEPiBGENQOCWA+BC4MdgwiBZ4RSgX6fW?=
 =?us-ascii?q?IQSV4Egc3EzGiOCHYEgTxgNnGICQIEXEAJPhDuGNoIyAQE?=
X-IronPort-AV: E=Sophos;i="5.70,420,1574118000"; d="scan'208";a="334541047"
Received: from mailrel04.vodafone.es ([217.130.24.35])
 by mail02.vodafone.es with ESMTP; 09 Feb 2020 08:50:35 +0100
Received: (qmail 22032 invoked from network); 9 Feb 2020 01:44:47 -0000
Received: from unknown (HELO 192.168.1.163) (apamar@[217.217.179.17])
 (envelope-sender <peterwong@bodazone.com>)
 by mailrel04.vodafone.es (qmail-ldap-1.03) with SMTP
 for <devel@driverdev.osuosl.org>; 9 Feb 2020 01:44:47 -0000
Date: Sun, 9 Feb 2020 02:44:46 +0100 (CET)
From: Peter Wong <peterwong@bodazone.com>
To: devel@driverdev.osuosl.org
Message-ID: <6692046.307532.1581212687371.JavaMail.cash@217.130.24.55>
Subject: Investment opportunity
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
Reply-To: Peter Wong <peterwonghsbchk@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,
Please check the attached email for a buisness proposal to explore.
Looking forward to hearing from you for more details.
Sincerely: Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
