Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F130A8A3FB8
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Apr 2024 01:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 728F081EA9;
	Sat, 13 Apr 2024 23:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UzPnMLKjEYx8; Sat, 13 Apr 2024 23:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A418A81EEE
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A418A81EEE;
	Sat, 13 Apr 2024 23:56:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81A641BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Apr 2024 23:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D7DA4082B
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Apr 2024 23:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 134YeIqNL-3y for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Apr 2024 23:56:34 +0000 (UTC)
X-Greylist: delayed 4571 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 13 Apr 2024 23:56:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 140E540829
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140E540829
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.251.211.82;
 helo=vm-9bf8c42d-49.novalocal; envelope-from=advice@ywywt.com;
 receiver=<UNKNOWN> 
Received: from vm-9bf8c42d-49.novalocal (mail.ywywt.com [160.251.211.82])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 140E540829
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Apr 2024 23:56:33 +0000 (UTC)
Received: from ocuzm (unknown [64.176.47.47])
 by vm-9bf8c42d-49.novalocal (Postfix) with ESMTPA id 0654DB0550
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Apr 2024 06:18:00 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vm-9bf8c42d-49.novalocal 0654DB0550
Message-ID: <0d04a4846d6fd203c9a28b9510c9d4a0@ywywt.com>
From: =?utf-8?B?44Kz44Kk44Oz44OB44Kn44OD44Kv?= <advice@ywywt.com>
To: driverdev-devel <driverdev-devel@linuxdriverproject.org>
Subject: =?utf-8?B?44CQQ29pbmNoZWNr4oGk44CR44Ki44Kr44Km44Oz44OI5Yi2?=
 =?utf-8?B?6ZmQ44Gu77iJ44Oh44O844Or77yB?=
Date: Sun, 14 Apr 2024 07:17:58 +0900
X-Priority: 3
X-Mailer: Mumf Cxqcorrx 5.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ywywt.com; s=default; t=1713046680;
 bh=cXvjBOMYV7hC2DkCuiFc4l7lVmA8jh9Z7C9N7agUrso=;
 h=From:To:Subject:Date:From;
 b=GN5T5xRcQJJEaCK3ePJjL7Q1itMAnWhw3YdUqYBTyBKFdoA7TNbjEa6uRPCKRiw/h
 HhjDn1IvVFsI90V3Oglh4Gs0QD/xSUWhBOmrSVx0Pj2s7Los03512W27Lb0KTBFpaQ
 tbesfZvWNebp8Nk7wgu98kHn2mz6SbQiHXsLblXk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=ywywt.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=temperror header.d=ywywt.com header.i=@ywywt.com header.a=rsa-sha256
 header.s=default header.b=GN5T5xRc
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

Q29pbmNo4oGkZWNr44KS44GU5Yip55So44GE4oGh44Gf44Gg44GN44GC44KK77iJ44GM44Go44GG
44GU77iJ44GW44GE44G+44GZ4oGk44CCDQoNCuOAkOOCs+OCpOODs+ODgeOCp++4ieODg+OCr+ag
quW8j+S8muKBoeekvuOAkeOCouOCq+OCpuODs+ODiOOBruOBlOKBpOWIqeeUqOeKtuazgeeiuu+4
ieiqjeOBq+mWouOBmeOCi+OBlOahiOWGhQ0KDQrjgZTlm57nrZTjga7norroqo3jgYzigaTjgafj
gY3jgovjgb7jgafjgIHmmpfvuInlj7fos4fnlKPjga7igaTpgIHph5HvuInjgIHkuKbvuInjgbPj
gavigaTml6XmnKzlhoblh7rph5HjgpLliLbvuInpmZDjgZfjgabjgYrvuInjgorjgb7jgZnjgIIN
Cg0K4pag5Zue562U44Gu44Oq4oGh44Oz44Kv44Gn44GZDQpodHRwczovL2NvaW5jaGVjay5oeHRq
cS5jb20vP29uZXRva2VuPUY5YVlwWjZVQjUmdG9rZW49N2oyaXRvb3ZaOThrOQ0KDQrigJXigJXi
gaTigJXigJXigJXigJXigJXigJXigaHigJXigJXigJXigaHigJXigJXigJXigJXvuInigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigaTigJXigJUNCuOCs+OCpOODs+KBoeODgeOCp+ODg++4ieOC
r+agquW8j+S8mu+4ieekviDms5XigaTli5njg7vjgrPigaTjg7Pjg5fjg6njgqTjgqLjg7Pjgrnp
g6gNCuOAkjE1MC0w4oGkMDQ0IOadseS6rOmDvea4i+iwt++4ieWMuuWGhuWxseeUujMtNiDigaFF
44O744K544Oa44O844K544K/44Ov4oGk44O8MTBGDQpVUkwgOiBodHRwczovL2NvaW5jaGVjay5o
eHRqcS5jb20vP2ZhcT1jRU0xNG5aSFRWNWQ5dHdSDQrmmpflj7fos4fnlKPkuqTmj5vmpa3igaHn
mbvpjLLjgIDplqLmnbHigaHosqHli5nlsYDplbcg56ysMDAwMeKBoTTlj7cNCuWKoOWFpeWNlOS8
muOAgOS4gOiIrOekvuKBpOWbo+azleS6uuaXpeacrOaal+WPt++4ieizh+eUo+WPluW8lealreWN
lOS8mg0K4oCV4oCV4oCV4oCV77iJ4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV77iJ4oCV
4oCV4oCV4oGk4oCV4oCV4oCV4oGh4oCV4oCV4oCV4oGk4oCV4oCV4oCVDQrigLvmnKzjg6Hjg7zj
g6vjga7igaHlhoXlrrnjgIHjg4bjgq3jgrnjg4jjgIHvuInnlLvlg4/jgarjganjga7nhKHmlq3v
uInou6LovInjg7vigaHnhKHmlq3kvb/nlKjigaTjgpLnpoHmraLigaTjgZfjgb7jgZnjgILigaEN
Cg0KdGhyZWFkOjpEZDhtV0hXVVFTZFJCUVlrOG11RDo6CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
