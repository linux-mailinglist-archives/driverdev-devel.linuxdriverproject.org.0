Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C8D8C47C2
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2024 21:42:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 417016080E;
	Mon, 13 May 2024 19:42:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U5rQX93Scdrw; Mon, 13 May 2024 19:42:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B4C06086F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B4C06086F;
	Mon, 13 May 2024 19:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF2DD1BF2CA
 for <devel@linuxdriverproject.org>; Mon, 13 May 2024 19:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D39CA82909
 for <devel@linuxdriverproject.org>; Mon, 13 May 2024 19:42:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f5Wb5qTZqUrv for <devel@linuxdriverproject.org>;
 Mon, 13 May 2024 19:42:23 +0000 (UTC)
X-Greylist: delayed 603 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 13 May 2024 19:42:22 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 06E6F827A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06E6F827A0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=104.143.35.223;
 helo=mail0.fn404.com; envelope-from=no-reply@fn404.com; receiver=<UNKNOWN> 
Received: from mail0.fn404.com (unknown [104.143.35.223])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06E6F827A0
 for <devel@linuxdriverproject.org>; Mon, 13 May 2024 19:42:21 +0000 (UTC)
From: =?utf-8?Q?=E8=87=AA=E5=8B=95=E3=83=A1=E3=83=BC=E3=83=AB=E9=80=9A=E7=9F=A5?=
 <no-reply@fn404.com>
To: "=?utf-8?Q?devel@linuxdriverproject.org?=" <devel@linuxdriverproject.org>
Subject: =?utf-8?Q?=E3=80=90_=E3=82=A4=E3=82=AA=E3=83=B3=E3=82=AB?=
 =?utf-8?Q?=E3=83=BC=E3=83=89_=E3=80=91=E6=B1=BA=E6=B8=88=E5=AE=8C?=
 =?utf-8?Q?=E4=BA=86=E3=81=AE=E3=81=8A=E7=9F=A5=E3=82=89=E3=81=9B?=
Mime-Version: 1.0
Message-ID: <tencent_66214492B5A3ACFB7738B4CD@fn404.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-QQ-Mailer: QQMail 2.x
Date: Tue, 14 May 2024 03:32:16 +0800
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=fn404.com; 
 h=From:To:Subject:Mime-Version:Message-ID:Date:Content-Type:
 Content-Transfer-Encoding; i=no-reply@fn404.com;
 bh=S7ORNKOGc6qarjpH+EN+VvjkiJF996LoDzwGRs6NpNw=;
 b=dvMQQDl5bNRPi0OKpuH5sGREaab8ZfFv/OETHYpooWaIutQAzR6SXVE6O5M+9tK0idgLLlQL+OBq
 7U4HAIjOf5QmgmrtI1kfUmNp72QaahHx6guxPRDmJoh8IX/v5Y+TfvKK9UnNoY1BI1HbRI1DQoxs
 lb16bqziQRQ/f8HmSAI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=fn404.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (1024-bit key,
 unprotected) header.d=fn404.com header.i=no-reply@fn404.com
 header.a=rsa-sha256 header.s=default header.b=dvMQQDl5
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

44Kk44Kq44Oz44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhIGRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcNCg0K44GT44Gu44Gf44Gz44Gv44Kk44Kq44Oz44Kr44O844OJ44KS44GU
5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ
44CCDQrmmKjml6XjgIHjgYrlrqLmp5jjga7jgq/jg6zjgrjjg4Pjg4jjgqvjg7zjg4njgafmtojo
srvmlK/lh7rjgYznmbrnlJ/jgZfjgZ/jgZPjgajjgpLjgYrnn6XjgonjgZvjgYTjgZ/jgZfjgb7j
gZnjgIINCuOBneOBruaUr+aJleOBhOOBruips+e0sOOBr+asoeOBruOBqOOBiuOCiuOBp+OBmeOA
gg0K44GUIOWIqSDnlKgg5pelIOaZgiDvvJoyMDI05bm0MDXmnIgxM+aXpSAyMTo0OSBQTQ0K44GU
IOWIqSDnlKgg5aC0IOaJgCDvvJrljYPku6PnlLDkuIDjg4TmqYsgMSDkuIHnm67lupcgKOOCu+OD
luODs+OCpOODrOODluODsykNCuOBlCDliKkg55SoIOmHkSDpoY0g77yaOTUzMOWGhg0KDQrjgqvj
g7zjg4njgpLkvb/nlKjjgZfjgZ/opprjgYjjgYzjgarjgYTloLTlkIjjga/jgIHku6XkuIvjga7j
g6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgq/jg6zjgrjjg4Pjg4gg44Kr44O844OJ5pSv
5omV44GE44Gu5om/6KqN44KS44Kt44Oj44Oz44K744Or44GX44Gm44GP44Gg44GV44GE44CCDQpo
dHRwczovL2JlYW0tc29sdXRpb25zLmNvbQ0KDQrjgqTjgqrjg7NORVTjgavjgZTnmbvpjLLjgYTj
gZ/jgaDjgYTjgabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6XjgonjgZvjgZnj
govjgrXjg7zjg5PjgrnjgafjgZnjgIINCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQrilqAg55m6IOihjCDogIUg4pagDQrmoKrlvI/kvJrnpL7jgqTjgqrjg7PpioDooYwNCuKW
oCDmpa3li5nlj5foqJfkvJrnpL4g4pagDQrjgqTjgqrjg7Pjg5XjgqPjg4rjg7Pjgrfjg6Pjg6vj
grXjg7zjg5PjgrnmoKrlvI/kvJrnpL4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
