Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E6AD0EC9
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 14:32:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38D84882DD;
	Wed,  9 Oct 2019 12:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpM5-QmRtnH8; Wed,  9 Oct 2019 12:32:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EC79882F7;
	Wed,  9 Oct 2019 12:32:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7E5C1BF2B3
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 12:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3CFB20504
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 12:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZiD6jbkBhJ1 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 12:32:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by silver.osuosl.org (Postfix) with ESMTPS id D13E4204FC
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 12:32:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2D3A710C0928;
 Wed,  9 Oct 2019 12:32:31 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-117-32.ams2.redhat.com
 [10.36.117.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 558591001DD7;
 Wed,  9 Oct 2019 12:32:29 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: rtl8723bs: Remove phy_Config*WithParaFile()
 functions
Date: Wed,  9 Oct 2019 14:32:20 +0200
Message-Id: <20191009123223.163241-2-hdegoede@redhat.com>
In-Reply-To: <20191009123223.163241-1-hdegoede@redhat.com>
References: <20191009123223.163241-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Wed, 09 Oct 2019 12:32:31 +0000 (UTC)
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 linux-wireless@vger.kernel.org, Denis Efremov <efremov@linux.com>,
 Bastien Nocera <hadess@hadess.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These are no longer used, so remove them and also remove various
struct definitions only used by these functions.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c       |    1 -
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    | 1076 -----------------
 .../rtl8723bs/include/hal_com_phycfg.h        |   26 -
 drivers/staging/rtl8723bs/include/hal_data.h  |   21 -
 4 files changed, 1124 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index eddd56abbb2d..109bd85b0cd8 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -30,7 +30,6 @@ void rtw_hal_data_deinit(struct adapter *padapter)
 {
 	if (is_primary_adapter(padapter)) {	/* if (padapter->isprimary) */
 		if (padapter->HalData) {
-			phy_free_filebuf(padapter);
 			vfree(padapter->HalData);
 			padapter->HalData = NULL;
 			padapter->hal_data_sz = 0;
diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 6539bee9b5ba..eb7de3617d83 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -2202,1079 +2202,3 @@ void Hal_ChannelPlanToRegulation(struct adapter *Adapter, u16 ChannelPlan)
 		break;
 	}
 }
-
-
-static char file_path_bs[PATH_MAX];
-
-#define GetLineFromBuffer(buffer)	 strsep(&buffer, "\n")
-
-int phy_ConfigMACWithParaFile(struct adapter *Adapter, char *pFileName)
-{
-	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	int	rlen = 0, rtStatus = _FAIL;
-	char *szLine, *ptmp;
-	u32 u4bRegOffset, u4bRegValue, u4bMove;
-
-	if (!(Adapter->registrypriv.load_phy_file & LOAD_MAC_PARA_FILE))
-		return rtStatus;
-
-	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
-
-	if ((pHalData->mac_reg_len == 0) && !pHalData->mac_reg) {
-		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
-
-		if (rtw_is_file_readable(file_path_bs) == true) {
-			rlen = rtw_retrive_from_file(file_path_bs, pHalData->para_file_buf, MAX_PARA_FILE_BUF_LEN);
-			if (rlen > 0) {
-				rtStatus = _SUCCESS;
-				pHalData->mac_reg = vzalloc(rlen);
-				if (pHalData->mac_reg) {
-					memcpy(pHalData->mac_reg, pHalData->para_file_buf, rlen);
-					pHalData->mac_reg_len = rlen;
-				} else
-					DBG_871X("%s mac_reg alloc fail !\n", __func__);
-			}
-		}
-	} else {
-		if ((pHalData->mac_reg_len != 0) && (pHalData->mac_reg != NULL)) {
-			memcpy(pHalData->para_file_buf, pHalData->mac_reg, pHalData->mac_reg_len);
-			rtStatus = _SUCCESS;
-		} else
-			DBG_871X("%s(): Critical Error !!!\n", __func__);
-	}
-
-	if (rtStatus == _SUCCESS) {
-		ptmp = pHalData->para_file_buf;
-		for (szLine = GetLineFromBuffer(ptmp); szLine != NULL; szLine = GetLineFromBuffer(ptmp)) {
-			if (!IsCommentString(szLine)) {
-				/*  Get 1st hex value as register offset */
-				if (GetHexValueFromString(szLine, &u4bRegOffset, &u4bMove)) {
-					if (u4bRegOffset == 0xffff) /*  Ending. */
-						break;
-
-					/*  Get 2nd hex value as register value. */
-					szLine += u4bMove;
-					if (GetHexValueFromString(szLine, &u4bRegValue, &u4bMove))
-						rtw_write8(Adapter, u4bRegOffset, (u8)u4bRegValue);
-				}
-			}
-		}
-	} else
-		DBG_871X("%s(): No File %s, Load from HWImg Array!\n", __func__, pFileName);
-
-	return rtStatus;
-}
-
-int phy_ConfigBBWithParaFile(
-	struct adapter *Adapter, char *pFileName, u32 ConfigType
-)
-{
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	int	rlen = 0, rtStatus = _FAIL;
-	char *szLine, *ptmp;
-	u32 u4bRegOffset, u4bRegValue, u4bMove;
-	char *pBuf = NULL;
-	u32 *pBufLen = NULL;
-
-	if (!(Adapter->registrypriv.load_phy_file & LOAD_BB_PARA_FILE))
-		return rtStatus;
-
-	switch (ConfigType) {
-	case CONFIG_BB_PHY_REG:
-		pBuf = pHalData->bb_phy_reg;
-		pBufLen = &pHalData->bb_phy_reg_len;
-		break;
-	case CONFIG_BB_AGC_TAB:
-		pBuf = pHalData->bb_agc_tab;
-		pBufLen = &pHalData->bb_agc_tab_len;
-		break;
-	default:
-		DBG_871X("Unknown ConfigType!! %d\r\n", ConfigType);
-		break;
-	}
-
-	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
-
-	if (pBufLen && (*pBufLen == 0) && !pBuf) {
-		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
-
-		if (rtw_is_file_readable(file_path_bs) == true) {
-			rlen = rtw_retrive_from_file(file_path_bs, pHalData->para_file_buf, MAX_PARA_FILE_BUF_LEN);
-			if (rlen > 0) {
-				rtStatus = _SUCCESS;
-				pBuf = vzalloc(rlen);
-				if (pBuf) {
-					memcpy(pBuf, pHalData->para_file_buf, rlen);
-					*pBufLen = rlen;
-
-					switch (ConfigType) {
-					case CONFIG_BB_PHY_REG:
-						pHalData->bb_phy_reg = pBuf;
-						break;
-					case CONFIG_BB_AGC_TAB:
-						pHalData->bb_agc_tab = pBuf;
-						break;
-					}
-				} else
-					DBG_871X("%s(): ConfigType %d  alloc fail !\n", __func__, ConfigType);
-			}
-		}
-	} else {
-		if (pBufLen && (*pBufLen == 0) && !pBuf) {
-			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
-			rtStatus = _SUCCESS;
-		} else
-			DBG_871X("%s(): Critical Error !!!\n", __func__);
-	}
-
-	if (rtStatus == _SUCCESS) {
-		ptmp = pHalData->para_file_buf;
-		for (szLine = GetLineFromBuffer(ptmp); szLine != NULL; szLine = GetLineFromBuffer(ptmp)) {
-			if (!IsCommentString(szLine)) {
-				/*  Get 1st hex value as register offset. */
-				if (GetHexValueFromString(szLine, &u4bRegOffset, &u4bMove)) {
-					if (u4bRegOffset == 0xffff) /*  Ending. */
-						break;
-					else if (u4bRegOffset == 0xfe || u4bRegOffset == 0xffe)
-						msleep(50);
-					else if (u4bRegOffset == 0xfd)
-						mdelay(5);
-					else if (u4bRegOffset == 0xfc)
-						mdelay(1);
-					else if (u4bRegOffset == 0xfb)
-						udelay(50);
-					else if (u4bRegOffset == 0xfa)
-						udelay(5);
-					else if (u4bRegOffset == 0xf9)
-						udelay(1);
-
-					/*  Get 2nd hex value as register value. */
-					szLine += u4bMove;
-					if (GetHexValueFromString(szLine, &u4bRegValue, &u4bMove)) {
-						/* DBG_871X("[BB-ADDR]%03lX =%08lX\n", u4bRegOffset, u4bRegValue); */
-						PHY_SetBBReg(Adapter, u4bRegOffset, bMaskDWord, u4bRegValue);
-
-						if (u4bRegOffset == 0xa24)
-							pHalData->odmpriv.RFCalibrateInfo.RegA24 = u4bRegValue;
-
-						/*  Add 1us delay between BB/RF register setting. */
-						udelay(1);
-					}
-				}
-			}
-		}
-	} else
-		DBG_871X("%s(): No File %s, Load from HWImg Array!\n", __func__, pFileName);
-
-	return rtStatus;
-}
-
-static void phy_DecryptBBPgParaFile(struct adapter *Adapter, char *buffer)
-{
-	u32 i = 0, j = 0;
-	u8 map[95] = {0};
-	u8 currentChar;
-	char *BufOfLines, *ptmp;
-
-	/* DBG_871X("=====>phy_DecryptBBPgParaFile()\n"); */
-	/*  32 the ascii code of the first visable char, 126 the last one */
-	for (i = 0; i < 95; ++i)
-		map[i] = (u8) (94 - i);
-
-	ptmp = buffer;
-	i = 0;
-	for (BufOfLines = GetLineFromBuffer(ptmp); BufOfLines != NULL; BufOfLines = GetLineFromBuffer(ptmp)) {
-		/* DBG_871X("Encrypted Line: %s\n", BufOfLines); */
-
-		for (j = 0; j < strlen(BufOfLines); ++j) {
-			currentChar = BufOfLines[j];
-
-			if (currentChar == '\0')
-				break;
-
-			currentChar -=  (u8) ((((i + j) * 3) % 128));
-
-			BufOfLines[j] = map[currentChar - 32] + 32;
-		}
-		/* DBG_871X("Decrypted Line: %s\n", BufOfLines); */
-		if (strlen(BufOfLines) != 0)
-			i++;
-		BufOfLines[strlen(BufOfLines)] = '\n';
-	}
-}
-
-static int phy_ParseBBPgParaFile(struct adapter *Adapter, char *buffer)
-{
-	int	rtStatus = _SUCCESS;
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	char *szLine, *ptmp;
-	u32 u4bRegOffset, u4bRegMask, u4bRegValue;
-	u32 u4bMove;
-	bool firstLine = true;
-	u8 tx_num = 0;
-	u8 band = 0, rf_path = 0;
-
-	/* DBG_871X("=====>phy_ParseBBPgParaFile()\n"); */
-
-	if (Adapter->registrypriv.RegDecryptCustomFile == 1)
-		phy_DecryptBBPgParaFile(Adapter, buffer);
-
-	ptmp = buffer;
-	for (szLine = GetLineFromBuffer(ptmp); szLine != NULL; szLine = GetLineFromBuffer(ptmp)) {
-		if (!IsCommentString(szLine)) {
-			if (isAllSpaceOrTab(szLine, sizeof(*szLine)))
-				continue;
-
-			/*  Get header info (relative value or exact value) */
-			if (firstLine) {
-				if (eqNByte(szLine, (u8 *)("#[v1]"), 5)) {
-
-					pHalData->odmpriv.PhyRegPgVersion = szLine[3] - '0';
-					/* DBG_871X("This is a new format PHY_REG_PG.txt\n"); */
-				} else if (eqNByte(szLine, (u8 *)("#[v0]"), 5)) {
-					pHalData->odmpriv.PhyRegPgVersion = szLine[3] - '0';
-					/* DBG_871X("This is a old format PHY_REG_PG.txt ok\n"); */
-				} else {
-					DBG_871X("The format in PHY_REG_PG are invalid %s\n", szLine);
-					return _FAIL;
-				}
-
-				if (eqNByte(szLine + 5, (u8 *)("[Exact]#"), 8)) {
-					pHalData->odmpriv.PhyRegPgValueType = PHY_REG_PG_EXACT_VALUE;
-					/* DBG_871X("The values in PHY_REG_PG are exact values ok\n"); */
-					firstLine = false;
-					continue;
-				} else if (eqNByte(szLine + 5, (u8 *)("[Relative]#"), 11)) {
-					pHalData->odmpriv.PhyRegPgValueType = PHY_REG_PG_RELATIVE_VALUE;
-					/* DBG_871X("The values in PHY_REG_PG are relative values ok\n"); */
-					firstLine = false;
-					continue;
-				} else {
-					DBG_871X("The values in PHY_REG_PG are invalid %s\n", szLine);
-					return _FAIL;
-				}
-			}
-
-			if (pHalData->odmpriv.PhyRegPgVersion == 0) {
-				/*  Get 1st hex value as register offset. */
-				if (GetHexValueFromString(szLine, &u4bRegOffset, &u4bMove)) {
-					szLine += u4bMove;
-					if (u4bRegOffset == 0xffff) /*  Ending. */
-						break;
-
-					/*  Get 2nd hex value as register mask. */
-					if (GetHexValueFromString(szLine, &u4bRegMask, &u4bMove))
-						szLine += u4bMove;
-					else
-						return _FAIL;
-
-					if (pHalData->odmpriv.PhyRegPgValueType == PHY_REG_PG_RELATIVE_VALUE) {
-						/*  Get 3rd hex value as register value. */
-						if (GetHexValueFromString(szLine, &u4bRegValue, &u4bMove)) {
-							PHY_StoreTxPowerByRate(Adapter, 0, 0, 1, u4bRegOffset, u4bRegMask, u4bRegValue);
-							/* DBG_871X("[ADDR] %03X =%08X Mask =%08x\n", u4bRegOffset, u4bRegValue, u4bRegMask); */
-						} else
-							return _FAIL;
-					} else if (pHalData->odmpriv.PhyRegPgValueType == PHY_REG_PG_EXACT_VALUE) {
-						u32 combineValue = 0;
-						u8 integer = 0, fraction = 0;
-
-						if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-							szLine += u4bMove;
-						else
-							return _FAIL;
-
-						integer *= 2;
-						if (fraction == 5)
-							integer += 1;
-						combineValue |= (((integer / 10) << 4) + (integer % 10));
-						/* DBG_871X(" %d", integer); */
-
-						if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-							szLine += u4bMove;
-						else
-							return _FAIL;
-
-						integer *= 2;
-						if (fraction == 5)
-							integer += 1;
-						combineValue <<= 8;
-						combineValue |= (((integer / 10) << 4) + (integer % 10));
-						/* DBG_871X(" %d", integer); */
-
-						if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-							szLine += u4bMove;
-						else
-							return _FAIL;
-
-						integer *= 2;
-						if (fraction == 5)
-							integer += 1;
-						combineValue <<= 8;
-						combineValue |= (((integer / 10) << 4) + (integer % 10));
-						/* DBG_871X(" %d", integer); */
-
-						if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-							szLine += u4bMove;
-						else
-							return _FAIL;
-
-						integer *= 2;
-						if (fraction == 5)
-							integer += 1;
-						combineValue <<= 8;
-						combineValue |= (((integer / 10) << 4) + (integer % 10));
-						/* DBG_871X(" %d", integer); */
-						PHY_StoreTxPowerByRate(Adapter, 0, 0, 1, u4bRegOffset, u4bRegMask, combineValue);
-
-						/* DBG_871X("[ADDR] 0x%3x = 0x%4x\n", u4bRegOffset, combineValue); */
-					}
-				}
-			} else if (pHalData->odmpriv.PhyRegPgVersion > 0) {
-				u32 index = 0;
-
-				if (eqNByte(szLine, "0xffff", 6))
-					break;
-
-				if (!eqNByte("#[END]#", szLine, 7)) {
-					/*  load the table label info */
-					if (szLine[0] == '#') {
-						index = 0;
-						if (eqNByte(szLine, "#[2.4G]", 7)) {
-							band = BAND_ON_2_4G;
-							index += 8;
-						} else if (eqNByte(szLine, "#[5G]", 5)) {
-							band = BAND_ON_5G;
-							index += 6;
-						} else {
-							DBG_871X("Invalid band %s in PHY_REG_PG.txt\n", szLine);
-							return _FAIL;
-						}
-
-						rf_path = szLine[index] - 'A';
-						/* DBG_871X(" Table label Band %d, RfPath %d\n", band, rf_path); */
-					} else { /*  load rows of tables */
-						if (szLine[1] == '1')
-							tx_num = RF_1TX;
-						else if (szLine[1] == '2')
-							tx_num = RF_2TX;
-						else if (szLine[1] == '3')
-							tx_num = RF_3TX;
-						else if (szLine[1] == '4')
-							tx_num = RF_4TX;
-						else {
-							DBG_871X("Invalid row in PHY_REG_PG.txt %c\n", szLine[1]);
-							return _FAIL;
-						}
-
-						while (szLine[index] != ']')
-							++index;
-						++index;/*  skip ] */
-
-						/*  Get 2nd hex value as register offset. */
-						szLine += index;
-						if (GetHexValueFromString(szLine, &u4bRegOffset, &u4bMove))
-							szLine += u4bMove;
-						else
-							return _FAIL;
-
-						/*  Get 2nd hex value as register mask. */
-						if (GetHexValueFromString(szLine, &u4bRegMask, &u4bMove))
-							szLine += u4bMove;
-						else
-							return _FAIL;
-
-						if (pHalData->odmpriv.PhyRegPgValueType == PHY_REG_PG_RELATIVE_VALUE) {
-							/*  Get 3rd hex value as register value. */
-							if (GetHexValueFromString(szLine, &u4bRegValue, &u4bMove)) {
-								PHY_StoreTxPowerByRate(Adapter, band, rf_path, tx_num, u4bRegOffset, u4bRegMask, u4bRegValue);
-								/* DBG_871X("[ADDR] %03X (tx_num %d) =%08X Mask =%08x\n", u4bRegOffset, tx_num, u4bRegValue, u4bRegMask); */
-							} else
-								return _FAIL;
-						} else if (pHalData->odmpriv.PhyRegPgValueType == PHY_REG_PG_EXACT_VALUE) {
-							u32 combineValue = 0;
-							u8 integer = 0, fraction = 0;
-
-							if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-								szLine += u4bMove;
-							else
-								return _FAIL;
-
-							integer *= 2;
-							if (fraction == 5)
-								integer += 1;
-							combineValue |= (((integer / 10) << 4) + (integer % 10));
-							/* DBG_871X(" %d", integer); */
-
-							if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-								szLine += u4bMove;
-							else
-								return _FAIL;
-
-							integer *= 2;
-							if (fraction == 5)
-								integer += 1;
-							combineValue <<= 8;
-							combineValue |= (((integer / 10) << 4) + (integer % 10));
-							/* DBG_871X(" %d", integer); */
-
-							if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-								szLine += u4bMove;
-							else
-								return _FAIL;
-
-							integer *= 2;
-							if (fraction == 5)
-								integer += 1;
-							combineValue <<= 8;
-							combineValue |= (((integer / 10) << 4) + (integer % 10));
-							/* DBG_871X(" %d", integer); */
-
-							if (GetFractionValueFromString(szLine, &integer, &fraction, &u4bMove))
-								szLine += u4bMove;
-							else
-								return _FAIL;
-
-							integer *= 2;
-							if (fraction == 5)
-								integer += 1;
-							combineValue <<= 8;
-							combineValue |= (((integer / 10) << 4) + (integer % 10));
-							/* DBG_871X(" %d", integer); */
-							PHY_StoreTxPowerByRate(Adapter, band, rf_path, tx_num, u4bRegOffset, u4bRegMask, combineValue);
-
-							/* DBG_871X("[ADDR] 0x%3x (tx_num %d) = 0x%4x\n", u4bRegOffset, tx_num, combineValue); */
-						}
-					}
-				}
-			}
-		}
-	}
-	/* DBG_871X("<=====phy_ParseBBPgParaFile()\n"); */
-	return rtStatus;
-}
-
-int phy_ConfigBBWithPgParaFile(struct adapter *Adapter, char *pFileName)
-{
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	int	rlen = 0, rtStatus = _FAIL;
-
-	if (!(Adapter->registrypriv.load_phy_file & LOAD_BB_PG_PARA_FILE))
-		return rtStatus;
-
-	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
-
-	if ((pHalData->bb_phy_reg_pg_len == 0) && !pHalData->bb_phy_reg_pg) {
-		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
-
-		if (rtw_is_file_readable(file_path_bs) == true) {
-			rlen = rtw_retrive_from_file(file_path_bs, pHalData->para_file_buf, MAX_PARA_FILE_BUF_LEN);
-			if (rlen > 0) {
-				rtStatus = _SUCCESS;
-				pHalData->bb_phy_reg_pg = vzalloc(rlen);
-				if (pHalData->bb_phy_reg_pg) {
-					memcpy(pHalData->bb_phy_reg_pg, pHalData->para_file_buf, rlen);
-					pHalData->bb_phy_reg_pg_len = rlen;
-				} else
-					DBG_871X("%s bb_phy_reg_pg alloc fail !\n", __func__);
-			}
-		}
-	} else {
-		if ((pHalData->bb_phy_reg_pg_len != 0) && (pHalData->bb_phy_reg_pg != NULL)) {
-			memcpy(pHalData->para_file_buf, pHalData->bb_phy_reg_pg, pHalData->bb_phy_reg_pg_len);
-			rtStatus = _SUCCESS;
-		} else
-			DBG_871X("%s(): Critical Error !!!\n", __func__);
-	}
-
-	if (rtStatus == _SUCCESS) {
-		/* DBG_871X("phy_ConfigBBWithPgParaFile(): read %s ok\n", pFileName); */
-		phy_ParseBBPgParaFile(Adapter, pHalData->para_file_buf);
-	} else
-		DBG_871X("%s(): No File %s, Load from HWImg Array!\n", __func__, pFileName);
-
-	return rtStatus;
-}
-
-int PHY_ConfigRFWithParaFile(
-	struct adapter *Adapter, char *pFileName, u8 eRFPath
-)
-{
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	int	rlen = 0, rtStatus = _FAIL;
-	char *szLine, *ptmp;
-	u32 u4bRegOffset, u4bRegValue, u4bMove;
-	u16 i;
-	char *pBuf = NULL;
-	u32 *pBufLen = NULL;
-
-	if (!(Adapter->registrypriv.load_phy_file & LOAD_RF_PARA_FILE))
-		return rtStatus;
-
-	switch (eRFPath) {
-	case ODM_RF_PATH_A:
-		pBuf = pHalData->rf_radio_a;
-		pBufLen = &pHalData->rf_radio_a_len;
-		break;
-	case ODM_RF_PATH_B:
-		pBuf = pHalData->rf_radio_b;
-		pBufLen = &pHalData->rf_radio_b_len;
-		break;
-	default:
-		DBG_871X("Unknown RF path!! %d\r\n", eRFPath);
-		break;
-	}
-
-	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
-
-	if (pBufLen && (*pBufLen == 0) && !pBuf) {
-		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
-
-		if (rtw_is_file_readable(file_path_bs) == true) {
-			rlen = rtw_retrive_from_file(file_path_bs, pHalData->para_file_buf, MAX_PARA_FILE_BUF_LEN);
-			if (rlen > 0) {
-				rtStatus = _SUCCESS;
-				pBuf = vzalloc(rlen);
-				if (pBuf) {
-					memcpy(pBuf, pHalData->para_file_buf, rlen);
-					*pBufLen = rlen;
-
-					switch (eRFPath) {
-					case ODM_RF_PATH_A:
-						pHalData->rf_radio_a = pBuf;
-						break;
-					case ODM_RF_PATH_B:
-						pHalData->rf_radio_b = pBuf;
-						break;
-					}
-				} else
-					DBG_871X("%s(): eRFPath =%d  alloc fail !\n", __func__, eRFPath);
-			}
-		}
-	} else {
-		if (pBufLen && (*pBufLen == 0) && !pBuf) {
-			memcpy(pHalData->para_file_buf, pBuf, *pBufLen);
-			rtStatus = _SUCCESS;
-		} else
-			DBG_871X("%s(): Critical Error !!!\n", __func__);
-	}
-
-	if (rtStatus == _SUCCESS) {
-		/* DBG_871X("%s(): read %s successfully\n", __func__, pFileName); */
-
-		ptmp = pHalData->para_file_buf;
-		for (szLine = GetLineFromBuffer(ptmp); szLine != NULL; szLine = GetLineFromBuffer(ptmp)) {
-			if (!IsCommentString(szLine)) {
-				/*  Get 1st hex value as register offset. */
-				if (GetHexValueFromString(szLine, &u4bRegOffset, &u4bMove)) {
-					if (u4bRegOffset == 0xfe || u4bRegOffset == 0xffe) /*  Deay specific ms. Only RF configuration require delay. */
-						msleep(50);
-					else if (u4bRegOffset == 0xfd) {
-						/* mdelay(5); */
-						for (i = 0; i < 100; i++)
-							udelay(MAX_STALL_TIME);
-					} else if (u4bRegOffset == 0xfc) {
-						/* mdelay(1); */
-						for (i = 0; i < 20; i++)
-							udelay(MAX_STALL_TIME);
-					} else if (u4bRegOffset == 0xfb)
-						udelay(50);
-					else if (u4bRegOffset == 0xfa)
-						udelay(5);
-					else if (u4bRegOffset == 0xf9)
-						udelay(1);
-					else if (u4bRegOffset == 0xffff)
-						break;
-
-					/*  Get 2nd hex value as register value. */
-					szLine += u4bMove;
-					if (GetHexValueFromString(szLine, &u4bRegValue, &u4bMove)) {
-						PHY_SetRFReg(Adapter, eRFPath, u4bRegOffset, bRFRegOffsetMask, u4bRegValue);
-
-						/*  Temp add, for frequency lock, if no delay, that may cause */
-						/*  frequency shift, ex: 2412MHz => 2417MHz */
-						/*  If frequency shift, the following action may works. */
-						/*  Fractional-N table in radio_a.txt */
-						/* 0x2a 0x00001		channel 1 */
-						/* 0x2b 0x00808		frequency divider. */
-						/* 0x2b 0x53333 */
-						/* 0x2c 0x0000c */
-						udelay(1);
-					}
-				}
-			}
-		}
-	} else
-		DBG_871X("%s(): No File %s, Load from HWImg Array!\n", __func__, pFileName);
-
-	return rtStatus;
-}
-
-static void initDeltaSwingIndexTables(
-	struct adapter *Adapter,
-	char *Band,
-	char *Path,
-	char *Sign,
-	char *Channel,
-	char *Rate,
-	char *Data
-)
-{
-	#define STR_EQUAL_5G(_band, _path, _sign, _rate, _chnl) \
-		((strcmp(Band, _band) == 0) && (strcmp(Path, _path) == 0) && (strcmp(Sign, _sign) == 0) &&\
-		(strcmp(Rate, _rate) == 0) && (strcmp(Channel, _chnl) == 0)\
-	)
-	#define STR_EQUAL_2G(_band, _path, _sign, _rate) \
-		((strcmp(Band, _band) == 0) && (strcmp(Path, _path) == 0) && (strcmp(Sign, _sign) == 0) &&\
-		(strcmp(Rate, _rate) == 0)\
-	)
-
-	#define STORE_SWING_TABLE(_array, _iteratedIdx) \
-		for (token = strsep(&Data, delim); token != NULL; token = strsep(&Data, delim)) {\
-			sscanf(token, "%d", &idx);\
-			_array[_iteratedIdx++] = (u8)idx;\
-		} \
-
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
-	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
-	u32 j = 0;
-	char *token;
-	char delim[] = ",";
-	u32 idx = 0;
-
-	/* DBG_871X("===>initDeltaSwingIndexTables(): Band: %s;\nPath: %s;\nSign: %s;\nChannel: %s;\nRate: %s;\n, Data: %s;\n", */
-	/*	Band, Path, Sign, Channel, Rate, Data); */
-
-	if (STR_EQUAL_2G("2G", "A", "+", "CCK")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_P, j);
-	} else if (STR_EQUAL_2G("2G", "A", "-", "CCK")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_N, j);
-	} else if (STR_EQUAL_2G("2G", "B", "+", "CCK")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKB_P, j);
-	} else if (STR_EQUAL_2G("2G", "B", "-", "CCK")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKB_N, j);
-	} else if (STR_EQUAL_2G("2G", "A", "+", "ALL")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GA_P, j);
-	} else if (STR_EQUAL_2G("2G", "A", "-", "ALL")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GA_N, j);
-	} else if (STR_EQUAL_2G("2G", "B", "+", "ALL")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GB_P, j);
-	} else if (STR_EQUAL_2G("2G", "B", "-", "ALL")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_2GB_N, j);
-	} else if (STR_EQUAL_5G("5G", "A", "+", "ALL", "0")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_P[0], j);
-	} else if (STR_EQUAL_5G("5G", "A", "-", "ALL", "0")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_N[0], j);
-	} else if (STR_EQUAL_5G("5G", "B", "+", "ALL", "0")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_P[0], j);
-	} else if (STR_EQUAL_5G("5G", "B", "-", "ALL", "0")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_N[0], j);
-	} else if (STR_EQUAL_5G("5G", "A", "+", "ALL", "1")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_P[1], j);
-	} else if (STR_EQUAL_5G("5G", "A", "-", "ALL", "1")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_N[1], j);
-	} else if (STR_EQUAL_5G("5G", "B", "+", "ALL", "1")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_P[1], j);
-	} else if (STR_EQUAL_5G("5G", "B", "-", "ALL", "1")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_N[1], j);
-	} else if (STR_EQUAL_5G("5G", "A", "+", "ALL", "2")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_P[2], j);
-	} else if (STR_EQUAL_5G("5G", "A", "-", "ALL", "2")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_N[2], j);
-	} else if (STR_EQUAL_5G("5G", "B", "+", "ALL", "2")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_P[2], j);
-	} else if (STR_EQUAL_5G("5G", "B", "-", "ALL", "2")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_N[2], j);
-	} else if (STR_EQUAL_5G("5G", "A", "+", "ALL", "3")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_P[3], j);
-	} else if (STR_EQUAL_5G("5G", "A", "-", "ALL", "3")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GA_N[3], j);
-	} else if (STR_EQUAL_5G("5G", "B", "+", "ALL", "3")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_P[3], j);
-	} else if (STR_EQUAL_5G("5G", "B", "-", "ALL", "3")) {
-		STORE_SWING_TABLE(pRFCalibrateInfo->DeltaSwingTableIdx_5GB_N[3], j);
-	} else
-		DBG_871X("===>initDeltaSwingIndexTables(): The input is invalid!!\n");
-}
-
-int PHY_ConfigRFWithTxPwrTrackParaFile(struct adapter *Adapter, char *pFileName)
-{
-	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	int	rlen = 0, rtStatus = _FAIL;
-	char *szLine, *ptmp;
-
-	if (!(Adapter->registrypriv.load_phy_file & LOAD_RF_TXPWR_TRACK_PARA_FILE))
-		return rtStatus;
-
-	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
-
-	if ((pHalData->rf_tx_pwr_track_len == 0) && !pHalData->rf_tx_pwr_track) {
-		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
-
-		if (rtw_is_file_readable(file_path_bs) == true) {
-			rlen = rtw_retrive_from_file(file_path_bs, pHalData->para_file_buf, MAX_PARA_FILE_BUF_LEN);
-			if (rlen > 0) {
-				rtStatus = _SUCCESS;
-				pHalData->rf_tx_pwr_track = vzalloc(rlen);
-				if (pHalData->rf_tx_pwr_track) {
-					memcpy(pHalData->rf_tx_pwr_track, pHalData->para_file_buf, rlen);
-					pHalData->rf_tx_pwr_track_len = rlen;
-				} else
-					DBG_871X("%s rf_tx_pwr_track alloc fail !\n", __func__);
-			}
-		}
-	} else {
-		if ((pHalData->rf_tx_pwr_track_len != 0) && (pHalData->rf_tx_pwr_track != NULL)) {
-			memcpy(pHalData->para_file_buf, pHalData->rf_tx_pwr_track, pHalData->rf_tx_pwr_track_len);
-			rtStatus = _SUCCESS;
-		} else
-			DBG_871X("%s(): Critical Error !!!\n", __func__);
-	}
-
-	if (rtStatus == _SUCCESS) {
-		/* DBG_871X("%s(): read %s successfully\n", __func__, pFileName); */
-
-		ptmp = pHalData->para_file_buf;
-		for (szLine = GetLineFromBuffer(ptmp); szLine != NULL; szLine = GetLineFromBuffer(ptmp)) {
-			if (!IsCommentString(szLine)) {
-				char band[5] = "", path[5] = "", sign[5] = "";
-				char chnl[5] = "", rate[10] = "";
-				char data[300] = ""; /*  100 is too small */
-				const int len = strlen(szLine);
-				int i;
-
-				if (len < 10 || szLine[0] != '[')
-					continue;
-
-				strncpy(band, szLine+1, 2);
-				strncpy(path, szLine+5, 1);
-				strncpy(sign, szLine+8, 1);
-
-				i = 10; /*  szLine+10 */
-				if (!ParseQualifiedString(szLine, &i, rate, '[', ']')) {
-					/* DBG_871X("Fail to parse rate!\n"); */
-				}
-				if (!ParseQualifiedString(szLine, &i, chnl, '[', ']')) {
-					/* DBG_871X("Fail to parse channel group!\n"); */
-				}
-				while (i < len && szLine[i] != '{')
-					i++;
-				if (!ParseQualifiedString(szLine, &i, data, '{', '}')) {
-					/* DBG_871X("Fail to parse data!\n"); */
-				}
-
-				initDeltaSwingIndexTables(Adapter, band, path, sign, chnl, rate, data);
-			}
-		}
-	} else
-		DBG_871X("%s(): No File %s, Load from HWImg Array!\n", __func__, pFileName);
-
-	return rtStatus;
-}
-
-static int phy_ParsePowerLimitTableFile(struct adapter *Adapter, char *buffer)
-{
-	u32 i = 0, forCnt = 0;
-	u8 loadingStage = 0, limitValue = 0, fraction = 0;
-	char *szLine, *ptmp;
-	int	rtStatus = _SUCCESS;
-	char band[10], bandwidth[10], rateSection[10],
-		regulation[TXPWR_LMT_MAX_REGULATION_NUM][10], rfPath[10], colNumBuf[10];
-	u8 colNum = 0;
-
-	DBG_871X("===>phy_ParsePowerLimitTableFile()\n");
-
-	if (Adapter->registrypriv.RegDecryptCustomFile == 1)
-		phy_DecryptBBPgParaFile(Adapter, buffer);
-
-	ptmp = buffer;
-	for (szLine = GetLineFromBuffer(ptmp); szLine != NULL; szLine = GetLineFromBuffer(ptmp)) {
-		/*  skip comment */
-		if (IsCommentString(szLine)) {
-			continue;
-		}
-
-		if (loadingStage == 0) {
-			for (forCnt = 0; forCnt < TXPWR_LMT_MAX_REGULATION_NUM; ++forCnt)
-				memset((void *) regulation[forCnt], 0, 10);
-
-			memset((void *) band, 0, 10);
-			memset((void *) bandwidth, 0, 10);
-			memset((void *) rateSection, 0, 10);
-			memset((void *) rfPath, 0, 10);
-			memset((void *) colNumBuf, 0, 10);
-
-			if (szLine[0] != '#' || szLine[1] != '#')
-				continue;
-
-			/*  skip the space */
-			i = 2;
-			while (szLine[i] == ' ' || szLine[i] == '\t')
-				++i;
-
-			szLine[--i] = ' '; /*  return the space in front of the regulation info */
-
-			/*  Parse the label of the table */
-			if (!ParseQualifiedString(szLine, &i, band, ' ', ',')) {
-				DBG_871X("Fail to parse band!\n");
-				return _FAIL;
-			}
-			if (!ParseQualifiedString(szLine, &i, bandwidth, ' ', ',')) {
-				DBG_871X("Fail to parse bandwidth!\n");
-				return _FAIL;
-			}
-			if (!ParseQualifiedString(szLine, &i, rfPath, ' ', ',')) {
-				DBG_871X("Fail to parse rf path!\n");
-				return _FAIL;
-			}
-			if (!ParseQualifiedString(szLine, &i, rateSection, ' ', ',')) {
-				DBG_871X("Fail to parse rate!\n");
-				return _FAIL;
-			}
-
-			loadingStage = 1;
-		} else if (loadingStage == 1) {
-			if (szLine[0] != '#' || szLine[1] != '#')
-				continue;
-
-			/*  skip the space */
-			i = 2;
-			while (szLine[i] == ' ' || szLine[i] == '\t')
-				++i;
-
-			if (!eqNByte((u8 *)(szLine + i), (u8 *)("START"), 5)) {
-				DBG_871X("Lost \"##   START\" label\n");
-				return _FAIL;
-			}
-
-			loadingStage = 2;
-		} else if (loadingStage == 2) {
-			if (szLine[0] != '#' || szLine[1] != '#')
-				continue;
-
-			/*  skip the space */
-			i = 2;
-			while (szLine[i] == ' ' || szLine[i] == '\t')
-				++i;
-
-			if (!ParseQualifiedString(szLine, &i, colNumBuf, '#', '#')) {
-				DBG_871X("Fail to parse column number!\n");
-				return _FAIL;
-			}
-
-			if (!GetU1ByteIntegerFromStringInDecimal(colNumBuf, &colNum))
-				return _FAIL;
-
-			if (colNum > TXPWR_LMT_MAX_REGULATION_NUM) {
-				DBG_871X(
-					"invalid col number %d (greater than max %d)\n",
-					colNum, TXPWR_LMT_MAX_REGULATION_NUM
-				);
-				return _FAIL;
-			}
-
-			for (forCnt = 0; forCnt < colNum; ++forCnt) {
-				u8 regulation_name_cnt = 0;
-
-				/*  skip the space */
-				while (szLine[i] == ' ' || szLine[i] == '\t')
-					++i;
-
-				while (szLine[i] != ' ' && szLine[i] != '\t' && szLine[i] != '\0')
-					regulation[forCnt][regulation_name_cnt++] = szLine[i++];
-				/* DBG_871X("regulation %s!\n", regulation[forCnt]); */
-
-				if (regulation_name_cnt == 0) {
-					DBG_871X("invalid number of regulation!\n");
-					return _FAIL;
-				}
-			}
-
-			loadingStage = 3;
-		} else if (loadingStage == 3) {
-			char channel[10] = {0}, powerLimit[10] = {0};
-			u8 cnt = 0;
-
-			/*  the table ends */
-			if (szLine[0] == '#' && szLine[1] == '#') {
-				i = 2;
-				while (szLine[i] == ' ' || szLine[i] == '\t')
-					++i;
-
-				if (eqNByte((u8 *)(szLine + i), (u8 *)("END"), 3)) {
-					loadingStage = 0;
-					continue;
-				} else {
-					DBG_871X("Wrong format\n");
-					DBG_871X("<===== phy_ParsePowerLimitTableFile()\n");
-					return _FAIL;
-				}
-			}
-
-			if ((szLine[0] != 'c' && szLine[0] != 'C') ||
-				 (szLine[1] != 'h' && szLine[1] != 'H')) {
-				DBG_871X("Meet wrong channel => power limt pair\n");
-				continue;
-			}
-			i = 2;/*  move to the  location behind 'h' */
-
-			/*  load the channel number */
-			cnt = 0;
-			while (szLine[i] >= '0' && szLine[i] <= '9') {
-				channel[cnt] = szLine[i];
-				++cnt;
-				++i;
-			}
-			/* DBG_871X("chnl %s!\n", channel); */
-
-			for (forCnt = 0; forCnt < colNum; ++forCnt) {
-				/*  skip the space between channel number and the power limit value */
-				while (szLine[i] == ' ' || szLine[i] == '\t')
-					++i;
-
-				/*  load the power limit value */
-				cnt = 0;
-				fraction = 0;
-				memset((void *) powerLimit, 0, 10);
-				while ((szLine[i] >= '0' && szLine[i] <= '9') || szLine[i] == '.') {
-					if (szLine[i] == '.') {
-						if ((szLine[i+1] >= '0' && szLine[i+1] <= '9')) {
-							fraction = szLine[i+1];
-							i += 2;
-						} else {
-							DBG_871X("Wrong fraction in TXPWR_LMT.txt\n");
-							return _FAIL;
-						}
-
-						break;
-					}
-
-					powerLimit[cnt] = szLine[i];
-					++cnt;
-					++i;
-				}
-
-				if (powerLimit[0] == '\0') {
-					powerLimit[0] = '6';
-					powerLimit[1] = '3';
-					i += 2;
-				} else {
-					if (!GetU1ByteIntegerFromStringInDecimal(powerLimit, &limitValue))
-						return _FAIL;
-
-					limitValue *= 2;
-					cnt = 0;
-					if (fraction == '5')
-						++limitValue;
-
-					/*  the value is greater or equal to 100 */
-					if (limitValue >= 100) {
-						powerLimit[cnt++] = limitValue/100 + '0';
-						limitValue %= 100;
-
-						if (limitValue >= 10) {
-							powerLimit[cnt++] = limitValue/10 + '0';
-							limitValue %= 10;
-						} else
-							powerLimit[cnt++] = '0';
-
-						powerLimit[cnt++] = limitValue + '0';
-					} else if (limitValue >= 10) { /*  the value is greater or equal to 10 */
-						powerLimit[cnt++] = limitValue/10 + '0';
-						limitValue %= 10;
-						powerLimit[cnt++] = limitValue + '0';
-					}
-					/*  the value is less than 10 */
-					else
-						powerLimit[cnt++] = limitValue + '0';
-
-					powerLimit[cnt] = '\0';
-				}
-
-				/* DBG_871X("ch%s => %s\n", channel, powerLimit); */
-
-				/*  store the power limit value */
-				PHY_SetTxPowerLimit(Adapter, (u8 *)regulation[forCnt], (u8 *)band,
-					(u8 *)bandwidth, (u8 *)rateSection, (u8 *)rfPath, (u8 *)channel, (u8 *)powerLimit);
-
-			}
-		} else {
-			DBG_871X("Abnormal loading stage in phy_ParsePowerLimitTableFile()!\n");
-			rtStatus = _FAIL;
-			break;
-		}
-	}
-
-	DBG_871X("<===phy_ParsePowerLimitTableFile()\n");
-	return rtStatus;
-}
-
-int PHY_ConfigRFWithPowerLimitTableParaFile(
-	struct adapter *Adapter, char *pFileName
-)
-{
-	struct hal_com_data	*pHalData = GET_HAL_DATA(Adapter);
-	int	rlen = 0, rtStatus = _FAIL;
-
-	if (!(Adapter->registrypriv.load_phy_file & LOAD_RF_TXPWR_LMT_PARA_FILE))
-		return rtStatus;
-
-	memset(pHalData->para_file_buf, 0, MAX_PARA_FILE_BUF_LEN);
-
-	if ((pHalData->rf_tx_pwr_lmt_len == 0) && !pHalData->rf_tx_pwr_lmt) {
-		rtw_merge_string(file_path_bs, PATH_MAX, rtw_phy_file_path, pFileName);
-
-		if (rtw_is_file_readable(file_path_bs) == true) {
-			rlen = rtw_retrive_from_file(file_path_bs, pHalData->para_file_buf, MAX_PARA_FILE_BUF_LEN);
-			if (rlen > 0) {
-				rtStatus = _SUCCESS;
-				pHalData->rf_tx_pwr_lmt = vzalloc(rlen);
-				if (pHalData->rf_tx_pwr_lmt) {
-					memcpy(pHalData->rf_tx_pwr_lmt, pHalData->para_file_buf, rlen);
-					pHalData->rf_tx_pwr_lmt_len = rlen;
-				} else
-					DBG_871X("%s rf_tx_pwr_lmt alloc fail !\n", __func__);
-			}
-		}
-	} else {
-		if ((pHalData->rf_tx_pwr_lmt_len != 0) && (pHalData->rf_tx_pwr_lmt != NULL)) {
-			memcpy(pHalData->para_file_buf, pHalData->rf_tx_pwr_lmt, pHalData->rf_tx_pwr_lmt_len);
-			rtStatus = _SUCCESS;
-		} else
-			DBG_871X("%s(): Critical Error !!!\n", __func__);
-	}
-
-	if (rtStatus == _SUCCESS) {
-		/* DBG_871X("%s(): read %s ok\n", __func__, pFileName); */
-		rtStatus = phy_ParsePowerLimitTableFile(Adapter, pHalData->para_file_buf);
-	} else
-		DBG_871X("%s(): No File %s, Load from HWImg Array!\n", __func__, pFileName);
-
-	return rtStatus;
-}
-
-void phy_free_filebuf(struct adapter *padapter)
-{
-	struct hal_com_data		*pHalData = GET_HAL_DATA(padapter);
-
-	if (pHalData->mac_reg)
-		vfree(pHalData->mac_reg);
-	if (pHalData->bb_phy_reg)
-		vfree(pHalData->bb_phy_reg);
-	if (pHalData->bb_agc_tab)
-		vfree(pHalData->bb_agc_tab);
-	if (pHalData->bb_phy_reg_pg)
-		vfree(pHalData->bb_phy_reg_pg);
-	if (pHalData->bb_phy_reg_mp)
-		vfree(pHalData->bb_phy_reg_mp);
-	if (pHalData->rf_radio_a)
-		vfree(pHalData->rf_radio_a);
-	if (pHalData->rf_radio_b)
-		vfree(pHalData->rf_radio_b);
-	if (pHalData->rf_tx_pwr_track)
-		vfree(pHalData->rf_tx_pwr_track);
-	if (pHalData->rf_tx_pwr_lmt)
-		vfree(pHalData->rf_tx_pwr_lmt);
-
-}
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index 9167f1e7827f..e9a3006a3e20 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -219,30 +219,4 @@ struct adapter *	Adapter,
 u16 			ChannelPlan
 	);
 
-#define MAX_PARA_FILE_BUF_LEN	25600
-
-#define LOAD_MAC_PARA_FILE				BIT0
-#define LOAD_BB_PARA_FILE					BIT1
-#define LOAD_BB_PG_PARA_FILE				BIT2
-#define LOAD_BB_MP_PARA_FILE				BIT3
-#define LOAD_RF_PARA_FILE					BIT4
-#define LOAD_RF_TXPWR_TRACK_PARA_FILE	BIT5
-#define LOAD_RF_TXPWR_LMT_PARA_FILE		BIT6
-
-int phy_ConfigMACWithParaFile(struct adapter *Adapter, char*pFileName);
-
-int phy_ConfigBBWithParaFile(struct adapter *Adapter, char*pFileName, u32 ConfigType);
-
-int phy_ConfigBBWithPgParaFile(struct adapter *Adapter, char*pFileName);
-
-int phy_ConfigBBWithMpParaFile(struct adapter *Adapter, char*pFileName);
-
-int PHY_ConfigRFWithParaFile(struct adapter *Adapter, char*pFileName, u8 eRFPath);
-
-int PHY_ConfigRFWithTxPwrTrackParaFile(struct adapter *Adapter, char*pFileName);
-
-int PHY_ConfigRFWithPowerLimitTableParaFile(struct adapter *Adapter, char*pFileName);
-
-void phy_free_filebuf(struct adapter *padapter);
-
 #endif /* __HAL_COMMON_H__ */
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 7d782659a84f..e5e667df6154 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -440,27 +440,6 @@ struct hal_com_data {
 	u32 		SysIntrStatus;
 	u32 		SysIntrMask;
 
-
-	char para_file_buf[MAX_PARA_FILE_BUF_LEN];
-	char *mac_reg;
-	u32 mac_reg_len;
-	char *bb_phy_reg;
-	u32 bb_phy_reg_len;
-	char *bb_agc_tab;
-	u32 bb_agc_tab_len;
-	char *bb_phy_reg_pg;
-	u32 bb_phy_reg_pg_len;
-	char *bb_phy_reg_mp;
-	u32 bb_phy_reg_mp_len;
-	char *rf_radio_a;
-	u32 rf_radio_a_len;
-	char *rf_radio_b;
-	u32 rf_radio_b_len;
-	char *rf_tx_pwr_track;
-	u32 rf_tx_pwr_track_len;
-	char *rf_tx_pwr_lmt;
-	u32 rf_tx_pwr_lmt_len;
-
 #ifdef CONFIG_BACKGROUND_NOISE_MONITOR
 	s16 noise[ODM_MAX_CHANNEL_NUM];
 #endif
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
