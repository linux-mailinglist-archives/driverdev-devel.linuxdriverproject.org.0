Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 503531A1167
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C8BA87196;
	Tue,  7 Apr 2020 16:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rrpB-DA3jNup; Tue,  7 Apr 2020 16:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CA3E86E6A;
	Tue,  7 Apr 2020 16:31:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C191C1BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDE3987C3F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MgyKSiMNBfb2 for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D90AB87C20
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277031;
 bh=dRrnNHMV0G1JWqD9csNXwBisLe5gckVpiKr95ecTaME=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=A2xmSSgoRNLUHu1/Szg6r1vDXUsZTOb+KG/SzV/HDceLZWBO/U+Oj6HDrV1WnDhko
 pZONpBSR2un/s1WzpCBwdlNsEXB1ArF8I4rMsRAUI4I2meaksyoywhLJQwfZtLVpft
 JZLwizq6DZjy+zoHK0ZZayf0QKAisQygb+nN8OGQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MxlzI-1j5qfp01K2-00zFIB; Tue, 07 Apr 2020 18:30:31 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] staging: vt6656: Cleanup of the vnt_get_frame_time
 function
Date: Tue,  7 Apr 2020 18:29:57 +0200
Message-Id: <20200407162959.7318-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:NC+4dIil97qHJle9P/jL4lfVPLU6zXIGv3DcNsA37CN31QtovPX
 g7fC2WiIKUbfZfLe+tWJ81AyrwAkQRoJb1waEYYfBFIGlt01IJeZLY8c6h2SuLhTXyoOqCu
 QdbyepCYd+xIjSrQABk1eOP7vfnjvOujorDEly3sdLmenh1JbXdWPDQ5TadppU4ww9j7Msd
 MyGcNYOv90QOACHIxHshw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:mGXCBEHfOME=:awlMunGY2CwfFgGND6vS6a
 Sj8Eg86ye8tBzkbBpLedSEy1NZP08VL0lFBpCa9LyqtbFy3H2M0PnzB4r+i6wI4xEHGeiuh4v
 RfoOegHBOARWSVd9hw7MyTKTj3GvG47PjLtiExj8EQ5P8GwIR9byBlZmPUdDKTnqa9osGv0UQ
 oI67n5/JuTw9UlvLW9NK0B1TxHZcX+0I51Oa0N+1InDVzQikHOu5+MwiKl73skTMpPMBGSEbh
 3SsiOuM1W7lhLe9gUA0codB4JVdNT873A8IjkjJ6ufdVjEhF2GVzZspLfUXmKKs732+O5PD/x
 3NZKDoT9AsuZtQWwxfhiBYYKFq29csza+BnG2ASLImn0U2N/tIpxVSPSmAPcnQ4vnGXHbtFBj
 6Hm1kGn0iSs2jcEzFdL/diJenSzPN+Y4s67/gIHsnSeiMBvTyfYtMSryl5wJhJIp5BaySAvfm
 nY3KgGlSq9vUGjFBv2ZZVTJ+uHYIfHtQgLpvHqroM4ldgEMDd3m2q7iCnVI5xQvK+U0HVnj8h
 724JzXWiYdSBPxIzq+hMCjOl+mut7n7TQluS35+jH4b3QFJj8W5q6KsmIpVAVbv17A2bTGYUF
 xGDIfB+Z0pQ9jg8n6FtOTY5QTwu2IqMrNGbcypYRCP1GTEn367P8TAi54xgUBYo/lhsdoACGw
 fIqodTTbCTmq5kfTN+c+tnJVd0rD+T8tTha3Ps2V77wCNaN1lJSUXSpMY0vvZd7f1RvY/a8x8
 1TBRgiDjkmRQLLntOmfZCIflAbNgWVtyIbk+TCUBtWjuNVhzj8h5rMzlXWQi4tGKV0/55mLfP
 9dw6xFD1LA96LHPkW7QvC/Th0K+Yn55L7lqAj3iCiFDzFKfCXhJTCZTpbmRXPuSn7FeLv2a6w
 yPe8fZH5uyh9gA/86Vd8M1xtCEYlo7237h90vznZNdLIZZwRjpquvf4N48SIuZvjzLCPTZ4FE
 6JaJCD5dY38FvtNSzn7B9YvEDVxJ4PwM4MMYsK3CYo5kdlbWVI+dmHoEXXqL3pInTywrj3YXJ
 M8OJ3cnxShFT0MOmUYVHt0x2hTM3B1NHHIoujU96DMZBlUMj0Px2tZhnRHEP3UnqWSZpxwy15
 5yIdaDXzpAkwJxAx0UMktmwtMGoAxgx9M2rPOo4WCHlLe6xj8hmO+3XAgZ5dUwo8ZDW0dypsb
 bUEcsI/EIM0NQIKUoC7yAkekUICa6f6I00PI/Pm0r7iu5N7aBWwS9rPIO6u6tcbjOyBUJQDn7
 kQ9GDukuzpk4ptoAs
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series makes a cleanup of the vnt_get_frame_time function.

The first patch makes use of the define RATE_11M instead of a magic
number. The second patch remove unnecessary local variable initialization.

Changelog v1 -> v2
- Not use the ARRAY_SIZE macro to compare against the tx_rate variable.

Oscar Carter (2):
  staging: vt6656: Use define instead of magic number for tx_rate
  staging: vt6656: Remove unnecessary local variable initialization

 drivers/staging/vt6656/baseband.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
