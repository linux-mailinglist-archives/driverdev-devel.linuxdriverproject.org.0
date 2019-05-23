Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DF62810B
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 17:21:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCAE188A76;
	Thu, 23 May 2019 15:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQiB6TYusyEA; Thu, 23 May 2019 15:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FD3E88A27;
	Thu, 23 May 2019 15:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A0C11BF426
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 15:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46D1A87D87
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 15:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVeGfDSxzajJ for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 15:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2C5E87D81
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 15:21:18 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4NFIqaj062657;
 Thu, 23 May 2019 15:21:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=LOcDRDBvuqevUfYHGbx7vmhcJBhEgAgUiuLdp1DKZgo=;
 b=aNLuRKMpfxfHrIVQhB6D6ajL5KJiVCHgV1l4soy2pzoNm4KTMbQ33bYFr+PDooIGnWJo
 FiCe337XLGUk1lyLtHjJB3At//ZOl4TaN/pYld1outbnZpiYUAqC3z2z4PWgNSkJ3eqB
 lafPGnTBoZ7GbksvTE850WEkEie0VDL7Z+sZ1oqi6wH7w0+dqXXKbAOH6X1cwtEjm8xy
 wbYiolySUFKzIRq1YWG+PYOIWF8xX5OSh2gwFEXT2DnrmOsek64xNW9TzDLlRGYolEmH
 pbt/1qjemxTY+fC/KWaQVDnqP2S09TEFFajCXaIJbcwl5Tb0f/WHAPkYyrZdq33hN6bU /A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2smsk5b40e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 15:21:17 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4NFJoxI160823;
 Thu, 23 May 2019 15:21:17 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2smsgvj8yg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 15:21:17 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4NFL9L8015891;
 Thu, 23 May 2019 15:21:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 23 May 2019 15:21:08 +0000
Date: Thu, 23 May 2019 18:20:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?utf-8?B?5p2O5aSp5q2j?= <ltz0302@gmail.com>
Subject: Re: [PATCH] staging/gasket: Fix string split
Message-ID: <20190523152055.GP19380@kadam>
References: <20190521150728.25501-1-ltz0302@gmail.com>
 <20190521151444.GN31203@kadam>
 <CAOJV0ikYP5jxrwNzFQ2rmOaAA2cv71TvuOjzasvAW=ezWc3znw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOJV0ikYP5jxrwNzFQ2rmOaAA2cv71TvuOjzasvAW=ezWc3znw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9265
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=761
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905230104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9265
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=816 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905230104
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
Cc: devel@driverdev.osuosl.org, Jie Zhang <zhangjie.cnde@gmail.com>,
 linux-kernel@i4.cs.fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDU6MTE6NTZQTSArMDIwMCwg5p2O5aSp5q2jIHdyb3Rl
Ogo+IEhlbGxv77yMCj4gd2UgYXJlIGRvaW5nIGEgcHJvamVjdCBpbiB0aGUgdW5pdmVyc2l0eSBh
bmQgd2UgY29vcGVyYXRlZCB0byBtYWtlIHRoaXMKPiBwYXRjaC4gU29tZSB3YXJuaW5ncyBhcmUg
Zm91bmQgYnkgTXIuWmhhbmcuCgpVc2UgdGhlIFJlcG9ydGVkLWJ5IHRvIHNob3cgd2hvIGZvdW5k
IHRoZSBidWcgb3IgQ28tZGV2ZWxvcGVkLWJ5OiBpZiB5b3UKYm90aCB3cm90ZSBjb2RlLgoKcmVn
YXJkcywKZGFuIGNhcnBlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
