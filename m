Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDAD542F7B
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jun 2022 13:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7314A60BDE;
	Wed,  8 Jun 2022 11:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Z2rK3fVoLJo; Wed,  8 Jun 2022 11:52:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A8BC60BCF;
	Wed,  8 Jun 2022 11:52:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9389A1BF574
 for <devel@linuxdriverproject.org>; Wed,  8 Jun 2022 11:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9033583EB2
 for <devel@linuxdriverproject.org>; Wed,  8 Jun 2022 11:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flhrrRHFYLGz for <devel@linuxdriverproject.org>;
 Wed,  8 Jun 2022 11:52:26 +0000 (UTC)
X-Greylist: delayed 00:47:34 by SQLgrey-1.8.0
Received: from debian.hdzva.edu.ua (unknown [193.105.7.194])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84E5483EA8
 for <devel@driverdev.osuosl.org>; Wed,  8 Jun 2022 11:52:26 +0000 (UTC)
Received: from debian.hdzva.edu.ua (localhost [127.0.0.1])
 by debian.hdzva.edu.ua (Postfix) with ESMTP id 4DA77E007D2;
 Wed,  8 Jun 2022 13:42:09 +0300 (EEST)
Received: from mail.hdzva.edu.ua (unknown [193.105.7.194])
 by debian.hdzva.edu.ua (Postfix) with ESMTPA id 3AD8BE007B0;
 Wed,  8 Jun 2022 13:42:09 +0300 (EEST)
MIME-Version: 1.0
Date: Wed, 08 Jun 2022 16:12:09 +0530
From: =?UTF-8?Q?=D1=81=D0=B8=D1=81=D1=82=D0=B5=D0=BC=D1=8B_=D0=B0=D0=B4?=
 =?UTF-8?Q?=D0=BC=D0=B8=D0=BD=D0=B8=D1=81=D1=82=D1=80=D0=B0=D1=82=D0=BE?=
 =?UTF-8?Q?=D1=80?= <ivanov@hdzva.edu.ua>
To: undisclosed-recipients:;
Mail-Reply-To: sistemassadmins@mail2engineer.com
Message-ID: <4fc2ae05418c8524db192dd10721e1b3@hdzva.edu.ua>
X-Sender: ivanov@hdzva.edu.ua
User-Agent: Roundcube Webmail/1.3.3
X-Virus-Scanned: ClamAV using ClamSMTP
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
Reply-To: sistemassadmins@mail2engineer.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0LLQvdC40LzQsNC90LjRjzsKCtCS0LDRiNC4INGB0L7QvtCx0YnQtdC90LjRjyDQv9GA0LXQstGL
0YHQuNC7INC70LjQvNC40YIg0L/QsNC80Y/RgtC4LCDQutC+0YLQvtGA0YvQuSDRgdC+0YHRgtCw
0LLQu9GP0LXRgiA1INCT0LEsIArQvtC/0YDQtdC00LXQu9C10L3QvdGL0YUg0LDQtNC80LjQvdC4
0YHRgtGA0LDRgtC+0YDQvtC8LCDQutC+0YLQvtGA0YvQuSDQsiDQvdCw0YHRgtC+0Y/RidC10LUg
0LLRgNC10LzRjyDRgNCw0LHQvtGC0LDQtdGCINC90LAgCjEwLjlHQiwg0JLRiyDQvdC1INGB0LzQ
vtC20LXRgtC1INC+0YLQv9GA0LDQstC40YLRjCDQuNC70Lgg0L/QvtC70YPRh9C40YLRjCDQvdC+
0LLRg9GOINC/0L7Rh9GC0YMsINC/0L7QutCwINCy0YsgCtC/0L7QstGC0L7RgNC90L4g0L3QtSDQ
v9GA0L7QstC10YDQuNGC0Ywg0LLQsNGIINC/0L7Rh9GC0L7QstGL0Lkg0Y/RidC40Log0L/QvtGH
0YLRiy4g0KfRgtC+0LHRiyDQstC+0YHRgdGC0LDQvdC+0LLQuNGC0YwgCtGA0LDQsdC+0YLQvtGB
0L/QvtGB0L7QsdC90L7RgdGC0Ywg0JLQsNGI0LXQs9C+INC/0L7Rh9GC0L7QstC+0LPQviDRj9GJ
0LjQutCwLCDQvtGC0L/RgNCw0LLRjNGC0LUg0YHQu9C10LTRg9GO0YnRg9GOINC40L3RhNC+0YDQ
vNCw0YbQuNGOIArQvdC40LbQtToKCtC40LzRjzoK0JjQvNGPINC/0L7Qu9GM0LfQvtCy0LDRgtC1
0LvRjzoK0L/QsNGA0L7Qu9GMOgrQn9C+0LTRgtCy0LXRgNC20LTQtdC90LjQtSDQv9Cw0YDQvtC7
0Y86CtCQ0LTRgNC10YEg0Y3Qu9C10LrRgtGA0L7QvdC90L7QuSDQv9C+0YfRgtGLOgrRgtC10LvQ
tdGE0L7QvToKCtCV0YHQu9C4INCy0Ysg0L3QtSDQsiDRgdC+0YHRgtC+0Y/QvdC40Lgg0L/QtdGA
0LXQv9GA0L7QstC10YDQuNGC0Ywg0YHQvtC+0LHRidC10L3QuNGPLCDQstCw0Ygg0L/QvtGH0YLQ
vtCy0YvQuSDRj9GJ0LjQuiDQsdGD0LTQtdGCIArQvtGC0LrQu9GO0YfQtdC9IQoK0J/RgNC40L3Q
vtGB0LjQvCDQuNC30LLQuNC90LXQvdC40Y8g0LfQsCDQvdC10YPQtNC+0LHRgdGC0LLQsC4K0J/R
gNC+0LLQtdGA0L7Rh9C90YvQuSDQutC+0LQ6IFJVOjUxNDNubmYuUlUK0J/QvtGH0YLRiyDRgtC1
0YXQvdC40YfQtdGB0LrQvtC5INC/0L7QtNC00LXRgNC20LrQuCDCqSAyMDIyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
