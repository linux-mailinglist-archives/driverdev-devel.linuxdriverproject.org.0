Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC9E3183C9
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 03:57:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E23F987322;
	Thu, 11 Feb 2021 02:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGp-0dCkfzYP; Thu, 11 Feb 2021 02:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAA8387269;
	Thu, 11 Feb 2021 02:57:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 472DF1BF83C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 02:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 43C7186B4F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 02:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Arq1uTMjXIa6 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 02:57:05 +0000 (UTC)
X-Greylist: delayed 16:14:24 by SQLgrey-1.7.6
Received: from qq.com (out162-62-57-87.mail.qq.com [162.62.57.87])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E92786B4E
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1613012209;
 bh=+f71zyvrBftjCMCBQOV2GIC6w0oHiz5sO7Xi7OF9FJI=;
 h=From:To:Cc:Subject:Date;
 b=M1iM2A2q4KYf5tt3AraWCwJ1ZN5QQjsqQMOBSlrM9bHqx62GU//RX752GmdwqHW8d
 K6CERGdEmiRL+wS6esyNGTmAhxWbsImC05tRTelj/efRtwUBT/r7AIQ0tsN0J4F1Uu
 6CT9qH58FAXin4uCucU+wG+7gN+dNcPEAbuH8Ph4=
Received: from sig.localdomain ([1.193.79.12])
 by newxmesmtplogicsvrszb5.qq.com (NewEsmtp) with SMTP
 id E2E0C22C; Thu, 11 Feb 2021 10:56:46 +0800
X-QQ-mid: xmsmtpt1613012206tbyaovjky
Message-ID: <tencent_5426AEF5EA524D1EE5D8A4644A1E921DCF07@qq.com>
X-QQ-XMAILINFO: NBVH4D93XLWT3xQuQjfZaZX75OW1iXb/NQlTNX752AVGc8GhZf2mmQrydhmy79
 9g/2yYdHK6wm9mD8rw8lsoxSKorn+w5Tn5CDdIPFjlbNbFCZzcED97/0jT/S52q4KXcRQZWteqr8
 eBPGF8Ix1ifOaA4hXBvAlSqc1zzY3gz6UORMXvuGTbpzDzzt9U9k/ZHL13/mN2zY1Q0bP3IxjcYl
 A4jqWkBZOrruUJ+iT39Hcr/o+d4m17wtYE2MyavCmkXP5fbZbNltpV89eW+PYyCPjVouS2MpnheD
 MuH8oDnHmb4Xn1BMc+fwGiryl7YRRYwKnQ0W5I2XEpMLSas2th+nb+QAJnV5BUk7a1V1kYD3c/RF
 UFm3ML6hObEOnihRfgLUim08jSGmXbx4XLEAMqPlWS3m5jTqHduixpmahGdV2MB2PdRCdw8xleLp
 IpsTAQlhcrQWAsJN4VI0jN9SdyuUQVFjyWnUYQk1zmXjmBNx/EchRDUUcK/hzqJuHf/ayT5KGGjh
 d2bL6vwdEqdN0k4/oVAcHm7JH28mh+SvvAY7h8xIX5QaCQEM3nSUy8FZY8ssxiINnNDabIR93jqv
 0jJoA+Ek1bxonLiLz8Z3ujR6epi97+aHd6LEQPOV8SKshp2a4Jpt5XqaC8nHeQwZKR9m3xHHb6kb
 SIXQ==
From: Yujia Qiao <rapiz@foxmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>
Subject: 
Date: Thu, 11 Feb 2021 10:56:35 +0800
X-OQ-MSGID: <20210211025635.621350-1-rapiz@foxmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry for the bother. Last patch was word-wrapped and thus broken.
I hope this time I've done things right.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
