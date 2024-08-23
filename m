Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E15E95D6D8
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2024 22:06:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51153612FB;
	Fri, 23 Aug 2024 20:06:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtUe6gdwAiFK; Fri, 23 Aug 2024 20:06:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65F7A612E7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65F7A612E7;
	Fri, 23 Aug 2024 20:06:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39C201BF2B0;
 Fri, 23 Aug 2024 20:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE4E1400E7;
 Fri, 23 Aug 2024 20:06:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjNgQykA3_v9; Fri, 23 Aug 2024 20:06:49 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 23 Aug 2024 20:06:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B94340025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B94340025
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=160.248.93.23;
 helo=mail0.creema.jp; envelope-from=support@creema.jp; receiver=<UNKNOWN> 
Received: from mail0.creema.jp (unknown [160.248.93.23])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B94340025
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2024 20:06:47 +0000 (UTC)
Message-ID: <c803059ad4667750f36268a33549c54d@creema.jp>
From: =?utf-8?B?44KN44GG44GN44KT44OA44Kk44Os44Kv44OI?= <support@creema.jp>
To: "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>
Subject: =?utf-8?B?44CQIOmHjeimgSDjgJHlirTlg43ph5HluqvjgavjgYrjgZE=?=
 =?utf-8?B?44KL5LiA5pmC55qE44Gq44GU5Yip55So5Yi26ZmQ44Gu44GK55+l44KJ?=
 =?utf-8?B?44Gb?=
Date: Fri, 23 Aug 2024 19:56:40 +0000
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=creema.jp; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=support@creema.jp;
 bh=0EwhHq23gi5AV1gllE4DYVijT1/uRxWNRA9vA8FCFuI=;
 b=nxC08zjiisunrJusYeHO1mMtUeB05giMdVAzSo0dUALO3INiX7Vrnwq8oVCa8EXNk298D91DCo4D
 XdhKSYlhNTuMIE0jfw3rNTt3x8PU0qCF9Dd1X4rfITIvs5pSOyHqHAAEnW/DnXskBZdDkg+YUau8
 rqLM7xJ8xFrTnGLkg9U=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=quarantine dis=none)
 header.from=creema.jp
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

44GE44Gk44KC77yc44KN44GG44GN44KT77ye44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg
44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZDQoNCuS7luWbveOBruiqsOOBi+OBjOOB
guOBquOBn+OBruOCouOCq+OCpuODs+ODiOOBq+ODreOCsOOCpOODs+OBl+OBpuizh+mHkeOCkueb
l+OCguOBhuOBqOOBmeOCi+ippuOBv+OCkuaknOWHuuOBl+OBn+OBn+OCgeOAgeOBguOBquOBn+OB
ruOCouOCq+OCpuODs+ODiOOBr+S4gOaZgueahOOBq+WItumZkOOBleOCjOOBpuOBhOOBvuOBmeOA
gg0KDQrjg63jgrDjgqTjg7Pml6XmmYI6IDIwMjTlubQ45pyIMjPml6XvvIjph5HvvIkNCklQ44Ki
44OJ44Os44K5OiAxOTMuMjAwLjE1Ny4zNg0K44OW44Op44Km44K244Gu44OQ44O844K444On44Oz
OiBNb3ppbGxhLzUuMCAoTGludXg7IEFuZHJvaWQxMTsNCjIyMDExMTdUTClBcHBsZVdlYktpdC81
MzcuMzYoS0hUTUwsIGxpa2UgR2Vja28pIENocm9tZS8xMDkuMC4wLjAgTW9iaWxlDQpTYWZhcmkv
NTM3LjM2DQoNCuOBiuWuouOBleOBvuOBq+OBr+OBiuaJi+aVsOOCkuOBiuOBi+OBkeOBhOOBn+OB
l+OBvuOBmeOBjOOAgeS9leWNkuOBlOeQhuino+OBqOOBlOWNlOWKm+OCkuOBiumhmOOBhOeUs+OB
l+OBguOBkuOBvuOBmeOAguacrOS6uueiuuiqjeW+jOOAgeWItumZkOOCkuino+mZpOOBmeOCi+OB
k+OBqOOBjOOBp+OBjeOBvuOBmQ0KDQrilrzmnKzkurrnorroqo3jgpLjgZTluIzmnJvjga7mlrnj
ga/jgIHku6XkuIvjga7jg5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq/jgZfjgabjgZTmnKzkurrmp5jn
orroqo3jgpLooYzjgaPjgabjgY/jgaDjgZXjgYTjgIINCg0KaHR0cHM6Ly9oZGx2eGluZ3NoZS5j
b20NCg0KDQrigLvlm57nrZTjgYzlrozkuobjgZfjgb7jgZnjgajjgIHpgJrluLjjganjgYrjgorj
g63jgrDjgqTjg7Plvozjga7jgYrmiYvntprjgY3jgYzlj6/og73jgavjgarjgorjgb7jgZnjgIIN
CuKAu+S4gOWumuacn+mWk+OBlOeiuuiqjeOBhOOBn+OBoOOBkeOBquOBhOWgtOWQiOOAgeWPo+W6
p+WPluW8leOCkuWItumZkOOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCuacrOODoeODvOODq+OBjOOBlOiH
qui6q+Wum+OBp+OBquOBhOWgtOWQiOOAgeS7luOBruaWueOBjOiqpOOBo+OBpuWQjOOBmOODoeOD
vOODq+OCouODieODrOOCueOCkueZu+mMsuOBl+OBn+OCguOBruOBqOiAg+OBiOOCieOCjOOBvuOB
meOAgg0KDQrphY3kv6HlgZzmraLjga7jgYrmiYvntprjgY3jgpLjgZXjgZvjgabjgYTjgZ/jgaDj
gY3jgb7jgZnjga7jgafjgIHjg6Hjg7zjg6vmnKzmlofjgpLliYrpmaTjgZvjgZrjgIHku7blkI3j
gpLjgIzlrpvlhYjjga7plpPpgZXjgYTjgI3jgajkv67mraPjga7jgYbjgYjjgIHjgZTov5Tkv6Hj
gpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQrlt67lh7rkurrvvJrlhajlm73lirTlg43ph5HluqvljZTkvJoNCuOB
k+OBruODoeODvOODq+OCouODieODrOOCueOBr+mAgeS/oeWwgueUqOOBp+OBmQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
