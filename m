Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE88CD98C
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2024 19:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5EEC4063E;
	Thu, 23 May 2024 17:57:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3eZTM76rm0hI; Thu, 23 May 2024 17:57:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0300D4181F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0300D4181F;
	Thu, 23 May 2024 17:57:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24B221CE761
 for <devel@linuxdriverproject.org>; Thu, 23 May 2024 17:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E50882430
 for <devel@linuxdriverproject.org>; Thu, 23 May 2024 17:57:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C2YGZulxAs6H for <devel@linuxdriverproject.org>;
 Thu, 23 May 2024 17:57:54 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 23 May 2024 17:57:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7E34D82321
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E34D82321
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.91;
 helo=mail0.szd481.com; envelope-from=no-reply@szd481.com; receiver=<UNKNOWN> 
Received: from mail0.szd481.com (unknown [137.220.233.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E34D82321
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2024 17:57:52 +0000 (UTC)
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCa55+l?= <no-reply@szd481.com>
To: =?utf-8?B?ZGV2ZWw=?= <devel@driverdev.osuosl.org>
Subject: =?utf-8?B?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR5rG65riI5a6M?=
 =?utf-8?B?5LqG44Gu44GK55+l44KJ44Gb?=
Date: Fri, 24 May 2024 01:47:43 +0800
Message-ID: <ONEHACPCMJJIGHCEAJBPDMPOIBPN.no-reply@szd481.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=szd481.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@szd481.com;
 bh=btI2+A+/mt8PB9ahnC1jlozfNW23F/5tPoJxjxeqcq0=;
 b=L4x6ZzmTPLKhDmtq1AD5F2m4nrQjbkQcQ4bIYpDPmO2ufqAkgEpp0TKYHaAK0bQBdio7C61aFnp7
 rKaMq1PrnQnLNph0ksBchB4UpKvAKboUI0fbRY1aepJksg+rBuvS+x8Tuj5eojzYWUXrAQw4X28Y
 bQxbB4mpEjlTaHo+1Sg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=szd481.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=szd481.com header.i=no-reply@szd481.com
 header.a=rsa-sha256 header.s=default header.b=L4x6ZzmT
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

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhICAgZGV2ZWxAZHJp
dmVyZGV2Lm9zdW9zbC5vcmcNCg0K44GT44Gu44Gf44Gz44Gv5LiJ5LqV5L2P5Y+L44Kr44O844OJ
44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE
44G+44GZ44CCDQrmmKjml6XjgIHjgYrlrqLmp5jjga7jgq/jg6zjgrjjg4Pjg4jjgqvjg7zjg4nj
gafmtojosrvmlK/lh7rjgYznmbrnlJ/jgZfjgZ/jgZPjgajjgpLjgYrnn6XjgonjgZvjgYTjgZ/j
gZfjgb7jgZnjgIINCuOBneOBruaUr+aJleOBhOOBruips+e0sOOBr+asoeOBruOBqOOBiuOCiuOB
p+OBmeOAgg0KICDjgZQg5YipIOeUqCDml6Ug5pmCIO+8miAyMDI05bm0NeaciDIz5pelIDIzOjQ5
DQogIOOBlCDliKkg55SoIOWgtCDmiYAg77yaIOWNg+S7o+eUsOS4gOODhOapiyAzIOS4geebruW6
lyAoIOOCuyDjg5Yg44OzIOOCpCDjg6wg44OWIOODsyApDQogIOOBlCDliKkg55SoIOmHkSDpoY0g
77yaIDE3NTMwIOWGhg0KDQrjgqvjg7zjg4njgpLkvb/nlKjjgZfjgZ/opprjgYjjgYzjgarjgYTl
oLTlkIjjga/jgIHku6XkuIvjga7jg6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgq/jg6zj
grjjg4Pjg4gg44Kr44O844OJ5pSv5omV44GE44Gu5om/6KqN44KS44Kt44Oj44Oz44K744Or44GX
44Gm44GP44Gg44GV44GE44CCDQpodHRwczovL2RhdmVhbmRhbC5jb20NCg0K5LiJIOS6lSDkvY8g
5Y+LIE5FVOOBq+OBlOeZu+mMsuOBhOOBn+OBoOOBhOOBpuOBhOOCi+ODoeODvOODq+OCouODieOD
rOOCueOBuOOBiuefpeOCieOBm+OBmeOCi+OCteODvOODk+OCueOBp+OBmeOAgg0KLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCuKWoCDnmbog6KGMIOiAhSDilqANCuS4ieS6leS9
j+WPi+OCq+ODvOODieagqiDlvI8g5LyaIOekvg0K44CSMTM1LTAwNjEg5p2x5Lqs6YO95rGf5p2x
5Yy66LGK5rSyMuS4geebrjLnlaozMeWPtw0KQ29weXJpZ2h0IEAgU3VtaXRvbW8gTWl0c3VpIENh
cmQgQ29ycG9yYXRpb24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
