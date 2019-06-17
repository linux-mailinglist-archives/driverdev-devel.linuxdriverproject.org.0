Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C62254780C
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 04:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68B2F856C8;
	Mon, 17 Jun 2019 02:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KzqvM71AdU23; Mon, 17 Jun 2019 02:07:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D631855B4;
	Mon, 17 Jun 2019 02:07:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAF691BF365
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 02:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7CAD81E89
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 02:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Mcrc4JY2PQ3 for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 02:07:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1FD2F81E1D
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 02:07:52 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5H27bUf081293
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 22:07:51 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t5q66peru-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 22:07:48 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <devel@driverdev.osuosl.org> from <alastair@au1.ibm.com>;
 Mon, 17 Jun 2019 03:06:54 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 17 Jun 2019 03:06:44 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x5H26hXE39911824
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 02:06:43 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A51F042045;
 Mon, 17 Jun 2019 02:06:43 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B53F44203F;
 Mon, 17 Jun 2019 02:06:42 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 17 Jun 2019 02:06:42 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 960BCA03B5;
 Mon, 17 Jun 2019 12:06:41 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Subject: [PATCH v3 6/7] lib/hexdump.c: Allow multiple groups to be separated
 by spaces
Date: Mon, 17 Jun 2019 12:04:29 +1000
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617020430.8708-1-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19061702-0012-0000-0000-00000329AB19
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061702-0013-0000-0000-00002162C06E
Message-Id: <20190617020430.8708-7-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=933 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906170019
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Alastair D'Silva <alastair@d-silva.org>

Similar to the previous patch, this patch separates groups by 2 spaces for
the hex fields, and 1 space for the ASCII field.

eg.
buf:00000000: 454d414e 43415053  4e495f45 00584544  NAMESPAC E_INDEX.
buf:00000010: 00000000 00000002  00000000 00000000  ........ ........

Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
---
 include/linux/printk.h |  3 ++
 lib/hexdump.c          | 65 +++++++++++++++++++++++++++++++-----------
 2 files changed, 52 insertions(+), 16 deletions(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index c6b748f66a82..04416e788802 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -487,6 +487,9 @@ enum {
 #define HEXDUMP_2_GRP_LINES		BIT(2)
 #define HEXDUMP_4_GRP_LINES		BIT(3)
 #define HEXDUMP_8_GRP_LINES		BIT(4)
+#define HEXDUMP_2_GRP_SPACES		BIT(5)
+#define HEXDUMP_4_GRP_SPACES		BIT(6)
+#define HEXDUMP_8_GRP_SPACES		BIT(7)
 
 extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
diff --git a/lib/hexdump.c b/lib/hexdump.c
index 4da7d24826fb..dc85ef0dbb0a 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -91,9 +91,37 @@ static const char *group_separator(int group, u64 flags)
 	if ((flags & HEXDUMP_2_GRP_LINES) && !((group) % 2))
 		return "|";
 
+	if ((flags & HEXDUMP_8_GRP_SPACES) && !((group) % 8))
+		return "  ";
+
+	if ((flags & HEXDUMP_4_GRP_SPACES) && !((group) % 4))
+		return "  ";
+
+	if ((flags & HEXDUMP_2_GRP_SPACES) && !((group) % 2))
+		return "  ";
+
 	return " ";
 }
 
+static void separator_parameters(u64 flags, int groupsize, int *sep_chars,
+				 char *sep)
+{
+	if (flags & (HEXDUMP_2_GRP_LINES | HEXDUMP_2_GRP_SPACES))
+		*sep_chars = groupsize * 2;
+	if (flags & (HEXDUMP_4_GRP_LINES | HEXDUMP_4_GRP_SPACES))
+		*sep_chars = groupsize * 4;
+	if (flags & (HEXDUMP_8_GRP_LINES | HEXDUMP_8_GRP_SPACES))
+		*sep_chars = groupsize * 8;
+
+	if (flags & (HEXDUMP_2_GRP_LINES | HEXDUMP_4_GRP_LINES |
+					   HEXDUMP_8_GRP_LINES))
+		*sep = '|';
+
+	if (flags & (HEXDUMP_2_GRP_SPACES | HEXDUMP_4_GRP_SPACES |
+					   HEXDUMP_8_GRP_SPACES))
+		*sep = ' ';
+}
+
 /**
  * hex_dump_to_buffer - convert a blob of data to "hex ASCII" in memory
  * @buf: data blob to dump
@@ -107,6 +135,9 @@ static const char *group_separator(int group, u64 flags)
  *	HEXDUMP_2_GRP_LINES:		insert a '|' after every 2 groups
  *	HEXDUMP_4_GRP_LINES:		insert a '|' after every 4 groups
  *	HEXDUMP_8_GRP_LINES:		insert a '|' after every 8 groups
+ *	HEXDUMP_2_GRP_SPACES:		insert a ' ' after every 2 groups
+ *	HEXDUMP_4_GRP_SPACES:		insert a ' ' after every 4 groups
+ *	HEXDUMP_8_GRP_SPACES:		insert a ' ' after every 8 groups
  *
  * hex_dump_to_buffer() works on one "line" of output at a time, converting
  * <groupsize> bytes of input to hexadecimal (and optionally printable ASCII)
@@ -138,7 +169,8 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 	int j, lx = 0;
 	int ascii_column;
 	int ret;
-	int line_chars = 0;
+	int sep_chars = 0;
+	char sep = 0;
 
 	if (!is_power_of_2(groupsize) || groupsize > 8)
 		groupsize = 1;
@@ -152,8 +184,14 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 		len = rowsize;
 
 	ngroups = len / groupsize;
+
 	ascii_column = rowsize * 2 + rowsize / groupsize + 1;
 
+	// space separators use 2 spaces in the hex output
+	separator_parameters(flags, groupsize, &sep_chars, &sep);
+	if (sep == ' ')
+		ascii_column += rowsize / sep_chars;
+
 	if (!linebuflen)
 		goto overflow1;
 
@@ -221,24 +259,17 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 		linebuf[lx++] = ' ';
 	}
 
-	if (flags & HEXDUMP_2_GRP_LINES)
-		line_chars = groupsize * 2;
-	if (flags & HEXDUMP_4_GRP_LINES)
-		line_chars = groupsize * 4;
-	if (flags & HEXDUMP_8_GRP_LINES)
-		line_chars = groupsize * 8;
-
 	for (j = 0; j < len; j++) {
 		if (linebuflen < lx + 2)
 			goto overflow2;
 		ch = ptr[j];
 		linebuf[lx++] = (isascii(ch) && isprint(ch)) ? ch : '.';
 
-		if (line_chars && ((j + 1) < len) &&
-				((j + 1) % line_chars == 0)) {
+		if (sep_chars && ((j + 1) < len) &&
+				((j + 1) % sep_chars == 0)) {
 			if (linebuflen < lx + 2)
 				goto overflow2;
-			linebuf[lx++] = '|';
+			linebuf[lx++] = sep;
 		}
 	}
 nil:
@@ -247,9 +278,11 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 overflow2:
 	linebuf[lx++] = '\0';
 overflow1:
-	return (flags & HEXDUMP_ASCII) ? ascii_column + len +
-					(len - 1) / line_chars :
-					 (groupsize * 2 + 1) * ngroups - 1;
+	if (flags & HEXDUMP_ASCII)
+		return ascii_column + len + (len - 1) / sep_chars;
+
+	return groupsize * 2 * ngroups +
+		((sep == ' ') ? 2 : 1) * (ngroups - 1);
 }
 EXPORT_SYMBOL(hex_dump_to_buffer);
 
@@ -343,9 +376,9 @@ void print_hex_dump_ext(const char *level, const char *prefix_str,
 
 	/* Worst case line length:
 	 * 2 hex chars + space per byte in, 2 spaces, 1 char per byte in,
-	 * 1 char per N groups, NULL
+	 * 2 char per N groups, NULL
 	 */
-	linebuf_len = rowsize * 3 + 2 + rowsize + rowsize / groupsize + 1;
+	linebuf_len = rowsize * 3 + 2 + rowsize + 2 * rowsize / groupsize + 1;
 	linebuf = kzalloc(linebuf_len, GFP_KERNEL);
 	if (!linebuf) {
 		printk("%s%shexdump: Could not alloc %u bytes for buffer\n",
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
