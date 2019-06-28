Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6957959BF0
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 14:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E165F227AA;
	Fri, 28 Jun 2019 12:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRZs8JvcRldP; Fri, 28 Jun 2019 12:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B57822785;
	Fri, 28 Jun 2019 12:46:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B0461BF385
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 12:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35E07875DB
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 12:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Ntu3jr2Lgq0 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 12:46:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9EB7875D7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:46:42 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MVeDq-1i6FHy1JLA-00Rc6H; Fri, 28 Jun 2019 14:38:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kees Cook <keescook@chromium.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] staging: rtl8712: reduce stack usage, again
Date: Fri, 28 Jun 2019 14:37:48 +0200
Message-Id: <20190628123819.2785504-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190628123819.2785504-1-arnd@arndb.de>
References: <20190628123819.2785504-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:SwAfTMK1Aumu7ESGUIoGftrrnsBdgvwtumUFZxzqE6K6pYKg3Hh
 CPXI1Xp6zyKeCpdoillok8GzZC1zgclxe79btk0RScs8jLnpLd+fGTTCrZ6ESfLJRLKodUb
 A9k/gbUt58OMPil1gGcpA2mooDOqb+e3aDyPVhUiDn3oSiyTFH5H5MJRg1qoW6dzbqyUdGL
 jDjc4Mp7grULSM6oELhgQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:JcGSezCMLaE=:YfheNqcCBlwT7A4isoXHhn
 40+JpmyUJXdXMwKJJQpdms1mW+WdzONn3LmBwLP/9U+0x/7cwHhl4AfebysGjOyFXKQnDvuvt
 GUbpI6F/8YAqmHfa7zeE7d1thqGn/UDR2ugQXVA5B7m0NgZK8vZI3wm8xq5Wp1J0Jd1cZAxJ5
 a+S6hFFloi+EF7gFzd9wv/+tZI9SVWB0V1MK37WgxxAymrAmRA11ePPdujcdzEP/Po8TMMJOL
 8Cumo5Y4tgPdI1MUKjCAYFo+hW3ItgQ7xq2/rHCZt9ZVu00uw0d60TQUkvTrlKwX8E7xRuCzr
 C/1KaDrBO0+ETffr1TSXdTTd6/ISuNltFOVfRYF+vyi+PTDYtbDRdIbyvM9newPU6KaBZ2+hy
 PwuiYlzhXGk1tRUnXK/Z44gFPSJI9akVXeOK1PtecF9h3kuCViLU9eEqhMvcn5jiwpvqYIiiE
 i4Om+d2OWjwAA+kLv3e9XJYHGaKmsJsnZfd/jhK/V8w6nsXaR7KlwUZvlbqM0GpUETkPQIsCR
 JrqEpX3vLOk8AECPglg9hY8H1p4kMR71Ao9N2V5qxpZKEPNHREpWHmz+bOupIBf5/mngKc8xp
 Yf/9+INvXMM30cwtNAqjt86udS4vJCa1t+08AampH/h9h9fEsXAw8MhtlRa4d9CIenD72ITDs
 YkB2rDSb9g5qiTZIf2ej8OcxKAgKA/MxPK0U8HzIdiqhLLO4Z/7HXkyLYwwf+S/+8frCvBZh5
 QOtkL9WYAby5eh9vgNop/rZs6puw82MneTatmQ==
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
Cc: devel@driverdev.osuosl.org, Wensong Zhang <wensong@linux-vs.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, coreteam@netfilter.org,
 linux-kernel@vger.kernel.org, "James E . J . Bottomley" <jejb@linux.ibm.com>,
 James Smart <james.smart@broadcom.com>, Arnd Bergmann <arnd@arndb.de>,
 James Morris <jmorris@namei.org>, lvs-devel@vger.kernel.org,
 Julian Anastasov <ja@ssi.bg>, Simon Horman <horms@verge.net.au>,
 netfilter-devel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

An earlier patch I sent reduced the stack usage enough to get
below the warning limit, and I could show this was safe, but with
GCC_PLUGIN_STRUCTLEAK_BYREF_ALL, it gets worse again because large stack
variables in the same function no longer overlap:

drivers/staging/rtl8712/rtl871x_ioctl_linux.c: In function 'translate_scan.isra.2':
drivers/staging/rtl8712/rtl871x_ioctl_linux.c:322:1: error: the frame size of 1200 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]

Split out the largest two blocks in the affected function into two
separate functions and mark those noinline_for_stack.

Fixes: 8c5af16f7953 ("staging: rtl8712: reduce stack usage")
Fixes: 81a56f6dcd20 ("gcc-plugins: structleak: Generalize to all variable types")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 157 ++++++++++--------
 1 file changed, 88 insertions(+), 69 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index a224797cd993..fdc1df99d852 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -124,10 +124,91 @@ static inline void handle_group_key(struct ieee_param *param,
 	}
 }
 
-static noinline_for_stack char *translate_scan(struct _adapter *padapter,
-				   struct iw_request_info *info,
-				   struct wlan_network *pnetwork,
-				   char *start, char *stop)
+static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
+						   struct wlan_network *pnetwork,
+						   struct iw_event *iwe,
+						   char *start, char *stop)
+{
+	/* parsing WPA/WPA2 IE */
+	u8 buf[MAX_WPA_IE_LEN];
+	u8 wpa_ie[255], rsn_ie[255];
+	u16 wpa_len = 0, rsn_len = 0;
+	int n, i;
+
+	r8712_get_sec_ie(pnetwork->network.IEs,
+			 pnetwork->network.IELength, rsn_ie, &rsn_len,
+			 wpa_ie, &wpa_len);
+	if (wpa_len > 0) {
+		memset(buf, 0, MAX_WPA_IE_LEN);
+		n = sprintf(buf, "wpa_ie=");
+		for (i = 0; i < wpa_len; i++) {
+			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
+						"%02x", wpa_ie[i]);
+			if (n >= MAX_WPA_IE_LEN)
+				break;
+		}
+		memset(iwe, 0, sizeof(*iwe));
+		iwe->cmd = IWEVCUSTOM;
+		iwe->u.data.length = (u16)strlen(buf);
+		start = iwe_stream_add_point(info, start, stop,
+			iwe, buf);
+		memset(iwe, 0, sizeof(*iwe));
+		iwe->cmd = IWEVGENIE;
+		iwe->u.data.length = (u16)wpa_len;
+		start = iwe_stream_add_point(info, start, stop,
+			iwe, wpa_ie);
+	}
+	if (rsn_len > 0) {
+		memset(buf, 0, MAX_WPA_IE_LEN);
+		n = sprintf(buf, "rsn_ie=");
+		for (i = 0; i < rsn_len; i++) {
+			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
+						"%02x", rsn_ie[i]);
+			if (n >= MAX_WPA_IE_LEN)
+				break;
+		}
+		memset(iwe, 0, sizeof(*iwe));
+		iwe->cmd = IWEVCUSTOM;
+		iwe->u.data.length = strlen(buf);
+		start = iwe_stream_add_point(info, start, stop,
+			iwe, buf);
+		memset(iwe, 0, sizeof(*iwe));
+		iwe->cmd = IWEVGENIE;
+		iwe->u.data.length = rsn_len;
+		start = iwe_stream_add_point(info, start, stop, iwe,
+			rsn_ie);
+	}
+
+	return start;
+}
+
+static noinline_for_stack char *translate_scan_wps(struct iw_request_info *info,
+						   struct wlan_network *pnetwork,
+						   struct iw_event *iwe,
+						   char *start, char *stop)
+{
+	/* parsing WPS IE */
+	u8 wps_ie[512];
+	uint wps_ielen;
+
+	if (r8712_get_wps_ie(pnetwork->network.IEs,
+	    pnetwork->network.IELength,
+	    wps_ie, &wps_ielen)) {
+		if (wps_ielen > 2) {
+			iwe->cmd = IWEVGENIE;
+			iwe->u.data.length = (u16)wps_ielen;
+			start = iwe_stream_add_point(info, start, stop,
+				iwe, wps_ie);
+		}
+	}
+
+	return start;
+}
+
+static char *translate_scan(struct _adapter *padapter,
+			    struct iw_request_info *info,
+			    struct wlan_network *pnetwork,
+			    char *start, char *stop)
 {
 	struct iw_event iwe;
 	struct ieee80211_ht_cap *pht_capie;
@@ -240,73 +321,11 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 	/* Check if we added any event */
 	if ((current_val - start) > iwe_stream_lcp_len(info))
 		start = current_val;
-	/* parsing WPA/WPA2 IE */
-	{
-		u8 buf[MAX_WPA_IE_LEN];
-		u8 wpa_ie[255], rsn_ie[255];
-		u16 wpa_len = 0, rsn_len = 0;
-		int n;
-
-		r8712_get_sec_ie(pnetwork->network.IEs,
-				 pnetwork->network.IELength, rsn_ie, &rsn_len,
-				 wpa_ie, &wpa_len);
-		if (wpa_len > 0) {
-			memset(buf, 0, MAX_WPA_IE_LEN);
-			n = sprintf(buf, "wpa_ie=");
-			for (i = 0; i < wpa_len; i++) {
-				n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
-							"%02x", wpa_ie[i]);
-				if (n >= MAX_WPA_IE_LEN)
-					break;
-			}
-			memset(&iwe, 0, sizeof(iwe));
-			iwe.cmd = IWEVCUSTOM;
-			iwe.u.data.length = (u16)strlen(buf);
-			start = iwe_stream_add_point(info, start, stop,
-				&iwe, buf);
-			memset(&iwe, 0, sizeof(iwe));
-			iwe.cmd = IWEVGENIE;
-			iwe.u.data.length = (u16)wpa_len;
-			start = iwe_stream_add_point(info, start, stop,
-				&iwe, wpa_ie);
-		}
-		if (rsn_len > 0) {
-			memset(buf, 0, MAX_WPA_IE_LEN);
-			n = sprintf(buf, "rsn_ie=");
-			for (i = 0; i < rsn_len; i++) {
-				n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
-							"%02x", rsn_ie[i]);
-				if (n >= MAX_WPA_IE_LEN)
-					break;
-			}
-			memset(&iwe, 0, sizeof(iwe));
-			iwe.cmd = IWEVCUSTOM;
-			iwe.u.data.length = strlen(buf);
-			start = iwe_stream_add_point(info, start, stop,
-				&iwe, buf);
-			memset(&iwe, 0, sizeof(iwe));
-			iwe.cmd = IWEVGENIE;
-			iwe.u.data.length = rsn_len;
-			start = iwe_stream_add_point(info, start, stop, &iwe,
-				rsn_ie);
-		}
-	}
 
-	{ /* parsing WPS IE */
-		u8 wps_ie[512];
-		uint wps_ielen;
+	start = translate_scan_wpa(info, pnetwork, &iwe, start, stop);
+
+	start = translate_scan_wps(info, pnetwork, &iwe, start, stop);
 
-		if (r8712_get_wps_ie(pnetwork->network.IEs,
-		    pnetwork->network.IELength,
-		    wps_ie, &wps_ielen)) {
-			if (wps_ielen > 2) {
-				iwe.cmd = IWEVGENIE;
-				iwe.u.data.length = (u16)wps_ielen;
-				start = iwe_stream_add_point(info, start, stop,
-					&iwe, wps_ie);
-			}
-		}
-	}
 	/* Add quality statistics */
 	iwe.cmd = IWEVQUAL;
 	rssi = r8712_signal_scale_mapping(pnetwork->network.Rssi);
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
