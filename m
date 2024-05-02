Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDC88B931A
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 May 2024 03:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90A35401F9;
	Thu,  2 May 2024 01:28:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gqcBPeFwZ0Jf; Thu,  2 May 2024 01:28:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7326640331
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7326640331;
	Thu,  2 May 2024 01:28:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35B8D1BF3D1
 for <devel@linuxdriverproject.org>; Thu,  2 May 2024 01:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 264AC40159
 for <devel@linuxdriverproject.org>; Thu,  2 May 2024 01:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id znNUWuGzxjfo for <devel@linuxdriverproject.org>;
 Thu,  2 May 2024 01:28:40 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 02 May 2024 01:28:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0EB9D4011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EB9D4011A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=104.143.35.141;
 helo=mail0.te872.com; envelope-from=no-reply@te872.com; receiver=<UNKNOWN> 
Received: from mail0.te872.com (unknown [104.143.35.141])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EB9D4011A
 for <devel@driverdev.osuosl.org>; Thu,  2 May 2024 01:28:38 +0000 (UTC)
Message-ID: <4dc991e3835b4047ad543b982e4a4852@te872.com>
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCB5L+h?= <no-reply@te872.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+LIOOCq+ODvOODieOAkSDjgYrmlK8=?=
 =?utf-8?B?5omV44GE5LqI5a6a6YeR6aGN44Gu44GU5qGI5YaF?=
Date: Thu, 02 May 2024 09:18:32 +0800
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=te872.com; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@te872.com;
 bh=ycPeo4PiodI9AbCUTbYMdUaufHH/+jDLpdGVUl04pJg=;
 b=NNBxo9MDFEpCVI35OXT9fXOzRpD/84ROWTIZNOR5ZtLY+wtT7aJxF99tQpFTOc56kVLTBeZ4WjWz
 RRBpt4K8/WfVAjF8BJ7Mc5dPAiQlLeLnmjZwGAuL2NhN+GN8GWmBTweYFmCWn7Zy8nHoa4sBttA8
 JHfHX2OK0JJFhAejmeE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=te872.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=te872.com header.i=no-reply@te872.com
 header.a=rsa-sha256 header.s=default header.b=NNBxo9MD
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

5LiJIOS6lSDkvY8g5Y+LIOOCqyDjg7wg44OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4DQoN
CuOBk+OBruOBn+OBs+OBr+S4iSDkupUg5L2PIOWPiyDjgqsg44O8IOODieOCkuOBlOWIqeeUqOOB
hOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K5LiL
6KiY44Gu44GU5Yip55So54Wn5Lya44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l
44KJ44Gb44GE44Gf44GX44G+44GZ44CCDQoNCuKAu+acrOODoeODvOODq+OBr+OAgeOBlOWIqeeU
qOODu+iri+axguOCkueiuuWumuOBmeOCi+OCguOBruOBp+OBr+OBguOCiuOBvuOBm+OCk+OAgg0K
44GU5Yip55So5pel5pmC77yaMjAyNCAvIDA1IC8gMDEgICAgICAyMyA6IDE4DQrjgZTliKnnlKjl
oLTmiYDvvJrjgrvjg5bjg7Mt44Kk44Os44OW44OzIOWNg+S7o+eUsOS4gOODhOapiyAxIOS4geeb
ruW6lw0K44GU5Yip55So6YeR6aGN77yaOSwgNTgw5YaGDQoNCuOCq+ODvOODieOCkuS9v+eUqOOB
l+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOBr+OAgeS7peS4iyDjga4g44OqIOODsyDjgq8g44KS
44Kv44OqIOODgyDjgq8g44GXIOOBpuOCqyDjg7wg44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN
44GX44Gm44GP44Gg44GV44GE44CCDQpodHRwczovL2RvbnMtamlncy5jb20NCg0K77yc44GU5rOo
5oSP54K577yeDQrigLvvvJHvvI7mnKzjgrXjg7zjg5Pjgrnjga/jgIHjgYrlrqLmp5jjga7kuIkg
5LqVIOS9jyDlj4sg44KrIOODvCDjg4njga7jgZTliKnnlKjnhafkvJrjgYzooYzjgo/jgozjgZ/l
oLTlkIjjgIENCuS4iSDkupUg5L2PIOWPiyBORVTjgavjgZTnmbvpjLLjgYTjgZ/jgaDjgYTjgabj
gYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6XjgonjgZvjgZnjgovjgrXjg7zjg5Pj
grnjgafjgZnjgIINCuKAu++8ku+8juOBlOWlkee0hOOCreODo+ODs+OCu+ODq+OBqOOBquOBo+OB
n+WgtOWQiOOBruOBiuWPlua2iOOBl+aDheWgseOBr+mFjeS/oeOBleOCjOOBvuOBm+OCk+OAgg0K
4oC777yT77yO5LiJIOS6lSDkvY8g5Y+LIFZpc2Hjg5fjg6rjg5rjgqTjg4njgqvjg7zjg4nlj4rj
gbPkuInkupXkvY/lj4vjg5Djg7zjg4Hjg6Pjg6vjgqsg44O8IOODieOBruOBlOWIqeeUqOWIhuOC
guWQq+OBv+OBvuOBmeOAgg0K4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCUDQrilqDnmbog6KGMIOiAheKWoA0K5LiJIOS6lSDk
vY8g5Y+LIOOCqyDjg7wg44OJ5qCq5byP5Lya56S+DQrjgJIxMzUtMDA2MQ0K5p2x5Lqs6YO95rGf
5p2x5Yy66LGK5rSyMuS4geebrjLnlaozMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
