Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F4E1142B9
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 15:32:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6E218786C;
	Thu,  5 Dec 2019 14:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5LXBoyuMf1Zb; Thu,  5 Dec 2019 14:32:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E0A487952;
	Thu,  5 Dec 2019 14:32:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 008091BF316
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 14:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB0A5879CC
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 14:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcB0X+-ExkGz for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 14:32:25 +0000 (UTC)
X-Greylist: delayed 00:14:03 by SQLgrey-1.7.6
Received: from mail1.bemta26.messagelabs.com (mail1.bemta26.messagelabs.com
 [85.158.142.116])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA7D38788D
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 14:32:24 +0000 (UTC)
Received: from [85.158.142.199] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-b.eu-central-1.aws.symcld.net id 59/7B-19907-BA119ED5;
 Thu, 05 Dec 2019 14:18:19 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRWlGSWpSXmKPExsVyU+ECq+4qwZe
 xBieOmlrsOfOL3YHR496+wywBjFGsmXlJ+RUJrBmfLqYV7Ges2NWn1MC4h7GLkZNDSGAvo8Sp
 paxdjFxA9hlGifN3u9lAEmwCWhLr5t9kBrFFBGwlFj09wwpiCwtwSOw7OI8JIq4ncenlS7B6F
 gEViZ/LXgPVcHDwCnhITJjMDRJmFJCV+NK4GmwMs4C4xK0n88FaJQQEJJbsOc8MYYtKvHz8D2
 y8qICSxMaJ56FqdCTOXn/CCGEbSGxduo8FwlaQOPbuLRvIKgkBa4kbD/hBTGYBTYn1u/QhNil
 KTOl+yA5i8woISpyc+YRlAqPILCRHzELomIWkYxaSjgWMLKsYLZOKMtMzSnITM3N0DQ0MdA0N
 jXVNdI2MTPQSq3ST9FJLdZNT80qKEoGyeonlxXrFlbnJOSl6eaklmxiB0ZJSyPJgB2PH17d6h
 xglOZiURHnFmF7GCvEl5adUZiQWZ8QXleakFh9ilOHgUJLgNeYHygkWpaanVqRl5gAjFyYtwc
 GjJMKrIQCU5i0uSMwtzkyHSJ1itOe4+2TuImaOCS9B5Omj84DkkblLFzELseTl56VKifNyAlO
 FkABIW0ZpHtxQWKK5xCgrJczLyMDAIMRTkFqUm1mCKv+KUZyDUUmY9y7Icp7MvBK43a+AzmIC
 OutA5TOQs0oSEVJSDUxF9x8231hcarNp+s8ySf1oIQvDYyX2DQ26C6ee2HnU7/q5sKU62eWc2
 hM38R6d/3Bqxb/1XtOnrdxV8GxeQtKXphdp9c8FUuK9lx1VDGYw6H/4gnPuyzk/dyYaeR14yP
 B23rTX/p+urb80v8g4s3mfcWjgraKDa5cWJC+67/TozKy87YWJydErt+xVe7Rp34fs5SmbMxZ
 MkbbKe6/d4rPlzNIPXksv2KlwNtvKplsUe3EvzfnVtvflrmkvlWVdvr+QvlUnk6b/fKal/II2
 nYSurEUi7QV3emJ3vOBZZ7tS+fVjLaXs4x4/1RQvMDAVP271a587qfby1mcz+GZOkstvctj5N
 9Cy+YPa/IyifK4rSizFGYmGWsxFxYkAtFJEK68DAAA=
X-Env-Sender: tim.magee@ncipher.com
X-Msg-Ref: server-30.tower-244.messagelabs.com!1575555498!23114!1
X-Originating-IP: [217.32.208.5]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.44.22; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 15380 invoked from network); 5 Dec 2019 14:18:18 -0000
Received: from unknown (HELO exukdagfar02.INTERNAL.ROOT.TES) (217.32.208.5)
 by server-30.tower-244.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 5 Dec 2019 14:18:18 -0000
Received: from exukdagfar01.INTERNAL.ROOT.TES (10.194.2.70) by
 exukdagfar02.INTERNAL.ROOT.TES (10.194.2.71) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 5 Dec 2019 14:18:18 +0000
Received: from exukdagfar01.INTERNAL.ROOT.TES ([fe80::48de:aa33:fc4c:d1f5]) by
 exukdagfar01.INTERNAL.ROOT.TES ([fe80::48de:aa33:fc4c:d1f5%14]) with
 mapi id 15.00.1497.000; Thu, 5 Dec 2019 14:18:18 +0000
From: "Magee, Tim" <tim.magee@ncipher.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: 
Thread-Index: AQHVq3bW3ZB0EobypEOEOsc5ElCQnw==
Date: Thu, 5 Dec 2019 14:18:17 +0000
Message-ID: <c38ac3664aab9e6ac020c7005b5e03cc22d58189.camel@ncipher.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.1-2+b1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.23.136.4]
x-exclaimer-md-config: 7ae4f661-56ee-4cc7-9363-621ce9eeb65f
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

help



Tim Magee
Software Engineer
Tel: +44 1223 723723

nCipher Security
One Station Square
Cambridge CB1 2GA
United Kingdom

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
