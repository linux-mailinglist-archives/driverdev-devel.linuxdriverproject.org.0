Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E0C807392
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Dec 2023 16:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D16E382FCB;
	Wed,  6 Dec 2023 15:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D16E382FCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tR-3zhAOuBUv; Wed,  6 Dec 2023 15:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F7B183265;
	Wed,  6 Dec 2023 15:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F7B183265
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61FEB1BF406
 for <devel@linuxdriverproject.org>; Wed,  6 Dec 2023 15:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B46A41915
 for <devel@linuxdriverproject.org>; Wed,  6 Dec 2023 15:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B46A41915
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id biR-FO7Spjwf for <devel@linuxdriverproject.org>;
 Wed,  6 Dec 2023 15:17:17 +0000 (UTC)
Received: from lhr.gtn-esa2.in (gtnesa2.ptcl.net [59.103.87.20])
 by smtp4.osuosl.org (Postfix) with ESMTP id 434E041E6F
 for <devel@driverdev.osuosl.org>; Wed,  6 Dec 2023 15:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 434E041E6F
Message-Id: <573856$1heqjh@lhr.gtn-esa2.in>
X-IPAS-Result: =?us-ascii?q?A2EfMwBjj3Bl/7FksbYNTRwBAQE8AQEEBAEBAgEBBwEBF?=
 =?us-ascii?q?QmBPQYBAQMBgU4CAYM9hFOvZBOBag8BAQEBAQEBAQEdEx0EAQGFAQECAQGHL?=
 =?us-ascii?q?Sc6BA0BAgQBAQEBAwIDAQEBAQEBAwEBAQUBAQEBAQEGAwECAoEZhS+HEyc6H?=
 =?us-ascii?q?BsNDQImAkkWE7MleoEyGmeEX7FOLAIBAQGBZoEGhR8BgVCECIQ2hw4+hA4BE?=
 =?us-ascii?q?gEhg1sVglMEiRcHMoVKKYk4hnoHAgVOIkdwGwMHA38PKwcELRsHBgkUGBUjB?=
 =?us-ascii?q?lEEKCEJExI+BGuCRAqBAj8PDhGCPSs2NhlIglsVDDRKdRBCF4ERBGobEx43E?=
 =?us-ascii?q?RIXDQMIdB0CMjwDBQMEMwoSDQshBVYDRQZJCwMCGgUDAwSBMwUNHgIQGgYMJ?=
 =?us-ascii?q?wMDEkkCEBQDOwMDBgMLMQMwgRkMTwNrHzYJPA8MHwI5DScjAixWBRICFgMkG?=
 =?us-ascii?q?jYRCQsoAy8GOwITDAYGCV4mFgkEJwMIBANjAzMRHTcJA3g9NQgMG0QIISYdE?=
 =?us-ascii?q?qMyeAGBR0SBECGFQo12g2iNbKBOBwOOD5tHAZNeA5I2mEIgqjUNf3CEJ1KiR?=
 =?us-ascii?q?mk7AgcLAQEDCYpiAQE?=
IronPort-Data: A9a23:elTwiK2e6bozPajk6vbD5ehxkn2cJEfYwER7XKvMYLTBsI5bp2YPy
 GpLX2jUM/aLM2v3Ldl1a4y0/UhTuJCDmt9kHFNoqSg9HnlHgPSeCIXCJC8cHc8zwu4v7q5Dx
 59DAjUVBJlsFhcwnj/0bv656yMUOZigHtIQMsadUsxKbVEiEHtJZS5LwbZj2dcy2YbhWWthh
 PuryyHhEA79s9JLGj9Mg06zgEsHUCPa4W5wUvQWPJinjXeG/5UnJMt3yZKZdhMUdrJp8tuSH
 I4v+l0bElTxpH/BAvv9+lryn9ZjrrT6ZWBigVIOM0Sub4QrSoXfHc/XOdJFAXq7hQllkPhcl
 dlKjISiVTsNfaTjw7gnfDZfIj1XaPguFL/veRBTsOSglhycNSKyk7M3ShtsYLhwFuRfWDEUs
 6VHd3ZUNkjF3r3pqF64YrAEasALBdPqMsU8unhm5SnFBvJgR53fBb3JjTNd9Gpp1p4QR6yDD
 yYfQSF+YDbwaUdpBgdNOokmsfmyhHDQKzIN/Tp5ooJyuQA/1jdZz7XnNdPOZtGQbcFUgwCDq
 wru/Hv4CRIeNdKRxBKG9Wq2h+nEkGXwX4d6PLK57uN4g1qa7mMSEAAEVlyy5/SkkSaWUt5BJ
 lYI+zEjhbQy+UyqSt27VBq9yFaBtwQAWtwWH+o84R2N4rHN/geVCHUCTXhKb9lOnNArVSwmk
 FOVt9PoASBotvueTnf13reZqSuaMDIFLHFEYjULJSMA5NXuuogvjxXJZt95AK+ryNrvFlnYx
 j2PpiUknLUSleYCzbW64xbAmT3EjpPOSBI87Rn/Q2uk5UVjY+aNYoGt41XB9t5PK4KXRVCHt
 XQN3cOXhMgPC5+KvCOKROsGFbeg6//DOzS0qURrGJYo8Ryi/HqtdolW6T13YkxgWu4LcDj5Y
 UbVtlkMzJ9ONWSnbOl8ZIfZI8Ary7XwUNr+Wv3KY95mfJd8bkmE8TtoaErW2Hri+GAgnL8yP
 b+Xa8eyAGwWBLohyyGrQPwZl7gxyUgW22LJQrjpwhKmz/yaZXiIWfECKlTIc+NRxKeFphjFt
 tVSLc2Hzz1BX+DkJCra64geKRYNN3dTLZ/spsNUdsaHIwx7CG8mFvndyK8gfIojmL5a/tok5
 VnkChUekQWgwySfcUPTNS8LhK7TYKuTZEkTZUQEVWtEEVB4CWpzxM/zvKfbsVXqGCKPABK0o
 zQ4lx28P8ly
IronPort-HdrOrdr: A9a23:tkleXaCdzx6g7oblHem855DYdb4zR+YMi2TDGXoQdfSdGvb1qy
 nIppkmPH7P4wr5N0tQ+uxoVJPgfZq+z/RICOAqVN+ftW/dyQmVxepZgrcKrQePJxHD
X-Talos-CUID: 9a23:+CQ4GWNEBcYeJu5DdXRr83cMCNwZVj7U4yyMGWCXDld1YejA
X-Talos-MUID: 9a23:vPXBOQVpG4/3k57q/CT9iBNSPp1O3/T0OlsVvIscucCrbSMlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.04,255,1695668400"; d="scan'208";a="51866225"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO [192.168.1.225]) ([182.177.100.177])
 by lhr.gtn-esa2.in with ESMTP; 06 Dec 2023 20:17:02 +0500
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re: Congrat!!
To: "tom.sugiyama@thk.co.jp" <Arif.Khan@ptcl.net.pk>
From: "Warren.E"<Arif.Khan@ptcl.net.pk>
Date: Wed, 06 Dec 2023 23:16:52 +0800
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
Reply-To: grantsprogram@cpn.it
Cc: tom.sugiyama@thk.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Congrat!!

Ref No: BEH/XGM/012/0023.

Your email address was chosen at random during an internet search to receive USD 805,000.00 from me, the chairman and CEO of Berkshire Hathaway. If you are interested respond promptly via this e-mail:{grantsprogram@cpn.it} to learn more about the donation and how to claim it.

Regards,
Warren Edward Buffett
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
