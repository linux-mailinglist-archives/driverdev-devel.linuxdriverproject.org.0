Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABFA47F06E
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Dec 2021 18:43:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CE9A60ED8;
	Fri, 24 Dec 2021 17:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nq8gPGDsIxQ7; Fri, 24 Dec 2021 17:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0929660E21;
	Fri, 24 Dec 2021 17:43:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0631BF2A4
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 17:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58BAE60E21
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 17:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61pWGbEDR395 for <devel@linuxdriverproject.org>;
 Fri, 24 Dec 2021 17:42:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 840DC60810
 for <devel@driverdev.osuosl.org>; Fri, 24 Dec 2021 17:42:55 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id b73so5918303wmd.0
 for <devel@driverdev.osuosl.org>; Fri, 24 Dec 2021 09:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
 b=EdWCH5LpKN9h/zJ+KsGD2j6p1FlolHivHXyiH7U/9qeGQ5847kjrWNl0kgHn5myTPL
 UGYGUDGR7KZkmXet/ELJvc9nleiAacHd8q5qt05iPlYf0yyMnyO8d8HzGh5Ou6C3LLi7
 AILtH8bzVuemD4jrsT8iY0nFul5gzV+fDrXqTzDBKfIjNS9vEvSZzl56SoEGc/quupvR
 fpRYZspmM95wUnZ3bZE3kq9o+GEObhQawp7khPI7j7eRxoez+yYYknI0EG6SFTr4l4sH
 uGP1ptQTNzp1dfioigV+2VImjj/1vcgE2dKuflvZjLAMjEFuPy7e2C5uXM7+AyJ7LMaK
 BWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
 b=JwJqUv7fv1PA15dhLNaD+Vhim5lUzAxwIzeY9wpLfswrRBT+TlHlIfNEneh51mljo9
 DMWpwrOzIVyctvBj0RBskQoBmTF9dRfMY5msUSjQnRIj41udiJJSbnfo5MgV5HaB1rLi
 OboSjQV1FxylGZt+bVoKOnNuKf3azn9vGwUy8EgC3/wB1kt1OntzkbyqUdtDoaTdKaow
 WaoDPggGK7DNtIW+Nu/4n3jSRQrzDrqWXWEvD4MMgOQ+pwkBzDjQi+Ytby8SmJe7j5Cb
 u13msKHUgtwt2+g0ni12DsT2xmh8lrlSnwIFH6Nop1gIeacch/mKAhFdM8CtFLCT9MYw
 kamA==
X-Gm-Message-State: AOAM533+d2yiajsXgJmdiMlA+Kn1FHIUm8OszfsU1zX6XLvxjqTRM9p8
 uY3nERtXltB/2SzgP0wqFjo=
X-Google-Smtp-Source: ABdhPJw2QoWxWHYgW36gRytP+OhdGbgRKU4+dEz/2zoMMaukGlxfdCfnyku3llW3CGS+NO/ztSIy2g==
X-Received: by 2002:a7b:c159:: with SMTP id z25mr5579405wmi.36.1640367774168; 
 Fri, 24 Dec 2021 09:42:54 -0800 (PST)
Received: from [192.168.9.102] ([197.211.59.108])
 by smtp.gmail.com with ESMTPSA id e18sm9463236wrx.36.2021.12.24.09.42.41
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Fri, 24 Dec 2021 09:42:53 -0800 (PST)
Message-ID: <61c6069d.1c69fb81.1e4e7.b470@mx.google.com>
From: Margaret Leung KO May-yee <iniforeal@gmail.com>
X-Google-Original-From: Margaret Leung KO May-yee
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?Gesch=C3=A4ftsvorschlag?=
To: Recipients <Margaret@osuosl.org>
Date: Fri, 24 Dec 2021 18:42:24 +0100
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
Reply-To: la67737777@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Bin Frau Margaret Leung Ich habe einen Gesch=E4ftsvorschlag f=FCr Sie, erre=
ichen Sie mich unter: la67737777@gmail.com

Margaret Leung
Managing Director of Chong Hing Bank
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
