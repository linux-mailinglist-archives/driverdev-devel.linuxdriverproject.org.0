Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D6F8C2ADA
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2024 22:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84D80423E8;
	Fri, 10 May 2024 20:00:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L09RoQ41PtMM; Fri, 10 May 2024 20:00:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D3F0423FA
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D3F0423FA;
	Fri, 10 May 2024 20:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18E911BF390
 for <devel@linuxdriverproject.org>; Fri, 10 May 2024 20:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F29FA40643
 for <devel@linuxdriverproject.org>; Fri, 10 May 2024 20:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GsSreWpLJWc6 for <devel@linuxdriverproject.org>;
 Fri, 10 May 2024 20:00:17 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 10 May 2024 20:00:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A8E3C40492
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8E3C40492
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=137.220.233.57;
 helo=mail0.mf219.com; envelope-from=no-reply@mf219.com; receiver=<UNKNOWN> 
Received: from mail0.mf219.com (unknown [137.220.233.57])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8E3C40492
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2024 20:00:14 +0000 (UTC)
From: =?utf-8?Q?=E8=87=AA=E5=8B=95=E3=83=A1=E3=83=BC=E3=83=AB=E9=80=9A=E7=9F=A5?=
 <no-reply@mf219.com>
To: =?utf-8?Q?devel?= <devel@driverdev.osuosl.org>
Subject: =?utf-8?Q?=E3=80=90_=E4=B8=89=E4=BA=95=E4=BD=8F=E5=8F=8B?=
 =?utf-8?Q?=E3=82=AB=E3=83=BC=E3=83=89_=E3=80=91=E6=B1=BA=E6=B8=88?=
 =?utf-8?Q?=E5=AE=8C=E4=BA=86=E3=81=AE=E3=81=8A=E7=9F=A5=E3=82=89?=
 =?utf-8?Q?=E3=81=9B?=
Mime-Version: 1.0
Message-ID: <tencent_CC14B4E4942773335F53622D@mf219.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-QQ-Mailer: QQMail 2.x
Date: Sat, 11 May 2024 03:50:07 +0800
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=mf219.com; 
 h=From:To:Subject:Mime-Version:Message-ID:Date:Content-Type:
 Content-Transfer-Encoding; i=no-reply@mf219.com;
 bh=3/S4eamjvgsXkSHejwH6VCcC2SKqFeGtViCz55YuzIk=;
 b=Wn8xsDEfrVkqosfW8EhWlgXTMqgqkb+ejlKT21UqgRm+vDWHMLJE184PiC5kZmVlAvGbl47BICaq
 XDvSrh/KNDEh28y2bMHM7VRV+B44mdby3d0dDp/OmSDufbJWnwz6V5dJ/kMNyDdZkjS3MGrZitg2
 QF01XyIkkteABFUywrg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mf219.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=mf219.com header.i=no-reply@mf219.com
 header.a=rsa-sha256 header.s=default header.b=Wn8xsDEf
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

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhICBkZXZlbEBkcml2
ZXJkZXYub3N1b3NsLm9yZw0KDQrjgZPjga7jgZ/jgbPjga/kuInkupXkvY/lj4vjgqvjg7zjg4nj
gpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTj
gb7jgZnjgIINCuaYqOaXpeOAgeOBiuWuouanmOOBruOCr+ODrOOCuOODg+ODiOOCq+ODvOODieOB
p+a2iOiyu+aUr+WHuuOBjOeZuueUn+OBl+OBn+OBk+OBqOOCkuOBiuefpeOCieOBm+OBhOOBn+OB
l+OBvuOBmeOAgg0K44Gd44Gu5pSv5omV44GE44Gu6Kmz57Sw44Gv5qyh44Gu44Go44GK44KK44Gn
44GZ44CCDQrjgZQg5YipIOeUqCDml6Ug5pmCIO+8mjIwMjTlubQwNeaciDEw5pelICAyMzo0OSBQ
TQ0K44GUIOWIqSDnlKgg5aC0IOaJgCDvvJrljYPku6PnlLDkuIDjg4TmqYsgMSDkuIHnm67lupcg
KOOCu+ODluODs+OCpOODrOODluODsykNCuOBlCDliKkg55SoIOmHkSDpoY0g77yaOTUzMOWGhg0K
DQrjgqvjg7zjg4njgpLkvb/nlKjjgZfjgZ/opprjgYjjgYzjgarjgYTloLTlkIjjga/jgIHku6Xk
uIvjga7jg6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgq/jg6zjgrjjg4Pjg4gg44Kr44O8
44OJ5pSv5omV44GE44Gu5om/6KqN44KS44Kt44Oj44Oz44K744Or44GX44Gm44GP44Gg44GV44GE
44CCDQpodHRwczovL2xvdXppYm8uY29tDQoNCuS4iSDkupUg5L2PIOWPiyBORVTjgavjgZTnmbvp
jLLjgYTjgZ/jgaDjgYTjgabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6Xjgonj
gZvjgZnjgovjgrXjg7zjg5PjgrnjgafjgZnjgIINCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCuKWoCDnmbog6KGMIOiAhSDilqANCiAgIOS4iSDkupUg5L2PIOWPiyDj
gqsg44O8IOODiSDmoKog5byPIOS8miDnpL4NCiAgIOOAkjEzNS0wMDYxIOadseS6rOmDveaxn+ad
seWMuuixiua0sjLkuIHnm64y55WqMzHlj7cNCiAgIENvcHlyaWdodCBAIFN1bWl0b21vIE1pdHN1
aSBDYXJkIENvcnBvcmF0aW9uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
