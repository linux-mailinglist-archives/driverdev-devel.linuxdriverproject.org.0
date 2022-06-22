Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58877554111
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jun 2022 05:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 165D881443;
	Wed, 22 Jun 2022 03:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 165D881443
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iP4fb2Dhw1Bc; Wed, 22 Jun 2022 03:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3B4980C1B;
	Wed, 22 Jun 2022 03:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3B4980C1B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA4711BF9A4
 for <devel@linuxdriverproject.org>; Wed, 22 Jun 2022 03:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 902FE8452D
 for <devel@linuxdriverproject.org>; Wed, 22 Jun 2022 03:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 902FE8452D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRZYtTOV0acP for <devel@linuxdriverproject.org>;
 Wed, 22 Jun 2022 03:57:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 835FA84528
Received: from mail.pgj.campeche.gob.mx (unknown [187.157.28.107])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 835FA84528
 for <devel@driverdev.osuosl.org>; Wed, 22 Jun 2022 03:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.pgj.campeche.gob.mx (Postfix) with ESMTP id AC5281BC0ACE;
 Tue, 21 Jun 2022 22:17:06 -0500 (CDT)
Received: from mail.pgj.campeche.gob.mx ([127.0.0.1])
 by localhost (mail.pgj.campeche.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id W1R6t9Vjk2sq; Tue, 21 Jun 2022 22:17:02 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.pgj.campeche.gob.mx (Postfix) with ESMTP id B80DF1BC0DE1;
 Tue, 21 Jun 2022 22:17:01 -0500 (CDT)
X-Virus-Scanned: amavisd-new at pgj.campeche.gob.mx
Received: from mail.pgj.campeche.gob.mx ([127.0.0.1])
 by localhost (mail.pgj.campeche.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FgvcipoqDWVC; Tue, 21 Jun 2022 22:17:00 -0500 (CDT)
Received: from mail.pgj.campeche.gob.mx (mail.pgj.campeche.gob.mx
 [172.24.1.108])
 by mail.pgj.campeche.gob.mx (Postfix) with ESMTP id 3B9B91BC0D9C;
 Tue, 21 Jun 2022 22:16:56 -0500 (CDT)
Date: Tue, 21 Jun 2022 22:16:56 -0500 (CDT)
From: =?utf-8?B?0YHQuNGB0YLQtdC80Ysg0LDQtNC80LjQvdC40YHRgtGA0LDRgtC+0YA=?=
 <vfgcontrolinterno@pgj.campeche.gob.mx>
Message-ID: <1611105865.102622.1655867816099.JavaMail.zimbra@pgj.campeche.gob.mx>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [172.24.1.254]
X-Mailer: Zimbra 8.8.15_GA_4304 (zclient/8.8.15_GA_4304)
Thread-Index: kkjb9qX48MpL19bj2qu5TsN0adWCMg==
Thread-Topic: 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

0LLQvdC40LzQsNC90LjRjzsKCtCS0LDRiNC4INGB0L7QvtCx0YnQtdC90LjRjyDQv9GA0LXQstGL
0YHQuNC7INC70LjQvNC40YIg0L/QsNC80Y/RgtC4LCDQutC+0YLQvtGA0YvQuSDRgdC+0YHRgtCw
0LLQu9GP0LXRgiA1INCT0LEsINC+0L/RgNC10LTQtdC70LXQvdC90YvRhSDQsNC00LzQuNC90LjR
gdGC0YDQsNGC0L7RgNC+0LwsINC60L7RgtC+0YDRi9C5INCyINC90LDRgdGC0L7Rj9GJ0LXQtSDQ
stGA0LXQvNGPINGA0LDQsdC+0YLQsNC10YIg0L3QsCAxMC45R0IsINCS0Ysg0L3QtSDRgdC80L7Q
ttC10YLQtSDQvtGC0L/RgNCw0LLQuNGC0Ywg0LjQu9C4INC/0L7Qu9GD0YfQuNGC0Ywg0L3QvtCy
0YPRjiDQv9C+0YfRgtGDLCDQv9C+0LrQsCDQstGLINC/0L7QstGC0L7RgNC90L4g0L3QtSDQv9GA
0L7QstC10YDQuNGC0Ywg0LLQsNGIINC/0L7Rh9GC0L7QstGL0Lkg0Y/RidC40Log0L/QvtGH0YLR
iy4g0KfRgtC+0LHRiyDQstC+0YHRgdGC0LDQvdC+0LLQuNGC0Ywg0YDQsNCx0L7RgtC+0YHQv9C+
0YHQvtCx0L3QvtGB0YLRjCDQktCw0YjQtdCz0L4g0L/QvtGH0YLQvtCy0L7Qs9C+INGP0YnQuNC6
0LAsINC+0YLQv9GA0LDQstGM0YLQtSDRgdC70LXQtNGD0Y7RidGD0Y4g0LjQvdGE0L7RgNC80LDR
htC40Y4K0L3QuNC20LU6CgrQuNC80Y86CtCY0LzRjyDQv9C+0LvRjNC30L7QstCw0YLQtdC70Y86
CtC/0LDRgNC+0LvRjDoK0J/QvtC00YLQstC10YDQttC00LXQvdC40LUg0L/QsNGA0L7Qu9GPOgrQ
kNC00YDQtdGBINGN0LvQtdC60YLRgNC+0L3QvdC+0Lkg0L/QvtGH0YLRizoK0YLQtdC70LXRhNC+
0L06CgrQldGB0LvQuCDQstGLINC90LUg0LIg0YHQvtGB0YLQvtGP0L3QuNC4INC/0LXRgNC10L/R
gNC+0LLQtdGA0LjRgtGMINGB0L7QvtCx0YnQtdC90LjRjywg0LLQsNGIINC/0L7Rh9GC0L7QstGL
0Lkg0Y/RidC40Log0LHRg9C00LXRggrQvtGC0LrQu9GO0YfQtdC9IQoK0J/RgNC40L3QvtGB0LjQ
vCDQuNC30LLQuNC90LXQvdC40Y8g0LfQsCDQvdC10YPQtNC+0LHRgdGC0LLQsC4K0J/RgNC+0LLQ
tdGA0L7Rh9C90YvQuSDQutC+0LQ6IFdFQi5NQUlMLlJVOlJXVi5AWVJXSUFVVC5SVQrQn9C+0YfR
gtGLINGC0LXRhdC90LjRh9C10YHQutC+0Lkg0L/QvtC00LTQtdGA0LbQutC4IMKpIDIwMjIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
