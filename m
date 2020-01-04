Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E23261304BE
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 22:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12B1E8666C;
	Sat,  4 Jan 2020 21:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rIrxGuPg8eX; Sat,  4 Jan 2020 21:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1620861D2;
	Sat,  4 Jan 2020 21:48:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7949F1BF299
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 21:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 76339844BC
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 21:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TK-s4_99bDPC for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 21:48:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4486383EFE
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 21:48:42 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MPXpU-1j1hCa2l2g-00MYuj; Sat, 04 Jan 2020 22:48:34 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188: avoid excessive stack usage
Date: Sat,  4 Jan 2020 22:48:21 +0100
Message-Id: <20200104214832.558198-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Dujd3H1Dqz4viqnqZotC9wqLY9PFh4J/b95mmgxVkfB3sMcRYTL
 q7izsObtY7055Yvf8dsNNxiJvn4uFL3Nrmmwx1ye1anAQz2x7/44bJ1Mc+eiUglE4er1IcD
 puwJ/YIzolREIlvsjnbpOMPEXm/z9xOMDFCcTvHnecqA90BE8/zMS7tYEMRZmUSUOps6SsM
 AqqmhyWG6biV9FJ9FSB4w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:f6UG+xlVb74=:6WIIsMIZJZcovNJxIjmvdH
 GDNJPFdaiV/8o1ynD1uSgDS7EIGf7YiOVLDqPFwxZuGYx7KQMkhssCEsN+aA0hL38485pvOXS
 gT4qUcSvQRjZaNMa0pjyC/iEz1AYCU9ZtwVnJ7ly3pPrLVDofQu1xP7rFiFtv8bm3jN/fRbtq
 dsKbWpfY0m6SaoivALVS7fBW/X4fa4ozX1Vqgagks+NwuQ5pNhLTO5J12W2A+4KSGs+tel3M2
 H4qMDJmWXWiw196IDkKw2XUJ5UCLOShbgOlF4KRf2N7DtybEjuv9o4a95AFLvTpY+Hb8/tam0
 uV+UIRqRRMf3rjFKIAWMZ+mYwxTXRby2DoOqUwpVZw5XXymde0Jl1BTPoYMPe93Bj2HiLA+Of
 bDlONlxwlIA1Isc95McdyhDi+U2beU6KIz/tqKngY2yO1Oa9qXaTWZTEGZ8bSwLoAAcN0+IZV
 gyJ4JuvHwzI1otxK5jBAcGfSHBLRl7XOQ1hAdCmqmr0N/2IWGXlWH0nOxTIdWLevwsAINYJgz
 rw8XXEbtdk/n/DHQSqwdyLrYauUprYx8/CwlOT7uOPmrerI74FyPgF7oPTWFwCo1YLp/ZclSp
 EFaAVdr7k46gP8elnogMvpUIZOKH50AkTajPODZooFbnWVbCaZctURLJMDdJ/o1tu980GOgux
 y7ejIHz+PzAeLOO2V63LIyaK8wR/kOFry7BHWJKWkLKwE7G0AQSlChyRz+Q27rffZyW5xcSIf
 UORRJQ5NT41SH0dKzt/eSU/VC2ghwxmF+mjbD+Xe+YrgSMc53PVIo8H5f9wX1d++xpm+iP+LL
 MJMNgpbLF7mUDit8saxvGE7StJvtwlVW0izvudxnEvrTYBoD4MrifLJDzZc7b6qYD7UCamJ0i
 bpRcKi7zN7AMuL3ecURA==
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
Cc: =?UTF-8?q?Florian=20B=C3=BCstgens?= <flbue@gmx.de>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The rtl8188 copy of the os_dep support code causes a
warning about a very significant stack usage in the translate_scan()
function:

drivers/staging/rtl8188eu/os_dep/ioctl_linux.c: In function 'translate_scan':
drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:306:1: error: the frame size of 1560 bytes is larger than 1400 bytes [-Werror=frame-larger-than=]

Use the same trick as in the rtl8723bs copy of the same function, and
allocate it dynamically.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 710c33fd4965..47f4cc6a19a9 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -222,18 +222,21 @@ static char *translate_scan(struct adapter *padapter,
 
 	/* parsing WPA/WPA2 IE */
 	{
-		u8 buf[MAX_WPA_IE_LEN];
+		u8 *buf;
 		u8 wpa_ie[255], rsn_ie[255];
 		u16 wpa_len = 0, rsn_len = 0;
 		u8 *p;
 
+		buf = kzalloc(MAX_WPA_IE_LEN, GFP_ATOMIC);
+		if (!buf)
+			return start;
+
 		rtw_get_sec_ie(pnetwork->network.ies, pnetwork->network.ie_length, rsn_ie, &rsn_len, wpa_ie, &wpa_len);
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: ssid =%s\n", pnetwork->network.ssid.ssid));
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
 
 		if (wpa_len > 0) {
 			p = buf;
-			memset(buf, 0, MAX_WPA_IE_LEN);
 			p += sprintf(p, "wpa_ie=");
 			for (i = 0; i < wpa_len; i++)
 				p += sprintf(p, "%02x", wpa_ie[i]);
@@ -250,7 +253,6 @@ static char *translate_scan(struct adapter *padapter,
 		}
 		if (rsn_len > 0) {
 			p = buf;
-			memset(buf, 0, MAX_WPA_IE_LEN);
 			p += sprintf(p, "rsn_ie=");
 			for (i = 0; i < rsn_len; i++)
 				p += sprintf(p, "%02x", rsn_ie[i]);
@@ -264,6 +266,7 @@ static char *translate_scan(struct adapter *padapter,
 			iwe.u.data.length = rsn_len;
 			start = iwe_stream_add_point(info, start, stop, &iwe, rsn_ie);
 		}
+		kfree(buf);
 	}
 
 	{/* parsing WPS IE */
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
